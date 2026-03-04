--------------------------------------------------------
--  Arquivo: PKG_RNCH_DEP_v2.sql
--  Autor: Antigravity/Renach-DEP
--  Data: 03/03/2026
--  Descrição: Package de ETL refatorada.
--             * Utiliza JOINs ao invés de REGEXP no ON (pré-higienização)
--             * Utiliza Global Temporary Tables
--             * Otimizado para performance
--------------------------------------------------------

CREATE OR REPLACE PACKAGE PKG_RNCH_DEP AS
    PROCEDURE PROCESSAR_ARQUIVOS (
        p_seq_inicio        IN NUMBER,
        p_tipo_atualizacao  IN VARCHAR2,
        p_carga_horaria     IN VARCHAR2,
        p_co_curso          IN VARCHAR2 DEFAULT '04', 
        p_lote_id           OUT NUMBER
    );
    PROCEDURE PROCESSAR_SERPRO(p_no_curso IN VARCHAR2);
    PROCEDURE LIMPAR_STAGING;
END PKG_RNCH_DEP;
/

CREATE OR REPLACE PACKAGE BODY PKG_RNCH_DEP AS
    
    -- Limpeza serve apenas de garantia extra para a sessão, 
    -- embora as GTTs sejam ON COMMIT PRESERVE ROWS.
    PROCEDURE LIMPAR_STAGING IS
    BEGIN
        DELETE FROM TMP_RNCH_DEP_REL_CURSO;
        DELETE FROM TMP_RNCH_DEP_FORM_CAD;
        DELETE FROM TMP_RNCH_DEP_SERPRO; 
    END LIMPAR_STAGING;

    PROCEDURE PROCESSAR_SERPRO(p_no_curso IN VARCHAR2) IS
    BEGIN
        -- Higienização previa de CPF no arquivo do Serpro
        UPDATE TMP_RNCH_DEP_SERPRO 
        SET COL002 = LPAD(REGEXP_REPLACE(COL002, '[^0-9]', ''), 11, '0')
        WHERE COL002 IS NOT NULL;

        INSERT INTO TB_RNCH_DEP_SERPRO (NU_TRANSACAO, NU_CPF, NO_CURSO, DS_MENSAGEM, DH_PROCESSAMENTO)
        SELECT 
            S.COL001, 
            S.COL002, 
            p_no_curso,
            S.COL003, 
            S.COL004
        FROM TMP_RNCH_DEP_SERPRO S
        WHERE S.COL002 IS NOT NULL
          AND NOT EXISTS (
              SELECT 1 FROM TB_RNCH_DEP_SERPRO T
              WHERE T.NU_CPF           = S.COL002
                AND T.DS_MENSAGEM      = S.COL003
                AND T.DH_PROCESSAMENTO = S.COL004
                AND T.NO_CURSO         = p_no_curso
          );
        
        LIMPAR_STAGING;
        COMMIT;
    END PROCESSAR_SERPRO;

    PROCEDURE PROCESSAR_ARQUIVOS (
        p_seq_inicio        IN NUMBER,
        p_tipo_atualizacao  IN VARCHAR2,
        p_carga_horaria     IN VARCHAR2,
        p_co_curso          IN VARCHAR2 DEFAULT '04',
        p_lote_id           OUT NUMBER
    ) IS
        v_lote_id         NUMBER;
        v_hoje_juliano    VARCHAR2(3);
        v_user_safe       VARCHAR2(100); 
        v_qtd_registros   NUMBER; 
        v_log_mensagem    VARCHAR2(4000); 
    BEGIN
        v_user_safe := NVL(V('APP_USER'), USER);
        v_lote_id := TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDDHH24MI'));
        p_lote_id := v_lote_id;
        v_hoje_juliano := LPAD(TO_CHAR(SYSDATE, 'DDD'), 3, '0');

        -- OTIMIZAÇÃO: Pré-higienizar CPFs e CNHs nas tabelas temporárias
        -- Isso evita aplicar a função REGEXP_REPLACE linha a linha durante o JOIN.
        UPDATE TMP_RNCH_DEP_REL_CURSO 
        SET NU_CPF = LPAD(REGEXP_REPLACE(NU_CPF, '[^0-9]', ''), 11, '0')
        WHERE NU_CPF IS NOT NULL;

        UPDATE TMP_RNCH_DEP_FORM_CAD 
        SET NU_CPF = LPAD(REGEXP_REPLACE(NU_CPF, '[^0-9]', ''), 11, '0'),
            NU_CNH = LPAD(REGEXP_REPLACE(NU_CNH, '[^0-9]', ''), 11, '0')
        WHERE NU_CPF IS NOT NULL;

        -- O histórico da TB_RNCH_DEP_ETL será mantido. Não apagamos registros anteriores,
        -- para que seja um repositório auditável do que foi gerado ao SERPRO.

        -- 1. BLOQUEIO (Regra de Negócio: Duração < 5 dias)
        INSERT INTO TB_RNCH_DEP_AUD_BLOQUEADO (
            NU_CPF, DS_MOTIVO_BLOQUEIO, DT_MATRICULA, DT_CONCLUSAO, 
            NO_CURSO, NO_ORGAO, TP_SEXO, SG_UF_ALUNO, NO_MUNICIPIO_ALUNO, NU_NOTA,
            CO_LOTE, DH_AUDITORIA
        )
        SELECT 
            NU_CPF, 
            'Duração inferior a 5 dias',
            TO_DATE(DT_MATRICULA, 'DD/MM/YYYY'),
            TO_DATE(DT_CONCLUSAO, 'DD/MM/YYYY'),
            NO_CURSO, NO_ORGAO, 
            CASE WHEN UPPER(TP_SEXO) LIKE 'M%' THEN 'M' ELSE 'F' END, 
            SG_UF_ALUNO, NO_MUNICIPIO_ALUNO, 
            TO_NUMBER(REPLACE(NU_NOTA, '.', ',')), 
            p_lote_id,
            SYSTIMESTAMP
        FROM TMP_RNCH_DEP_REL_CURSO S
        WHERE (TO_DATE(DT_CONCLUSAO, 'DD/MM/YYYY') - TO_DATE(DT_MATRICULA, 'DD/MM/YYYY')) < 5
          AND NOT EXISTS (
              SELECT 1 FROM TB_RNCH_DEP_AUD_BLOQUEADO B
              WHERE B.NU_CPF         = S.NU_CPF
                AND B.NO_CURSO       = NVL(S.NO_CURSO, 'Não Informado')
                AND B.DT_CONCLUSAO   = TO_DATE(S.DT_CONCLUSAO, 'DD/MM/YYYY')
          );

        -- 2. ETL PRINCIPAL
        -- Cruzamento Otimizado pelas Colunas NU_CPF Limpas
        INSERT INTO TB_RNCH_DEP_ETL (
            NU_SEQ_TRANS, CO_TRANS, CO_MOD_TRANS, NU_CPF_USUARIO, SG_UF_OR_TRANS,
            SG_UF_ORIG_TRANSM, SG_UF_DES_TRANSM, CO_COND_TRANS, NU_TAM_TRANS, CO_RET_TRANS,
            NU_DIA_JULIANO, TP_CHAVE, NU_CNH, TP_EVENTO, TP_ATUALIZACAO,
            CO_CURSO, CO_MODALIDADE, NU_CERTIFICADO, DT_INICIO_CURSO,
            DT_FIM_CURSO, NU_CARGA_HORARIA, NU_CNPJ_ENTIDADE, NU_CPF_INSTRUTOR,
            CO_MUNICIPIO_CURSO, SG_UF_CURSO, DT_VALIDADE, SG_CATEGORIA, DS_OBSERVACOES, CO_LOTE
        )
        SELECT 
            LPAD(p_seq_inicio + ROW_NUMBER() OVER (ORDER BY r.NO_ALUNO) - 1, 6, '0'),
            '181', '7',
            r.NU_CPF, 
            'SA', 'SA', 'BR', '0', '0152', '00', 
            v_hoje_juliano, '2',
            f.NU_CNH,
            'C', 
            RPAD(UPPER(p_tipo_atualizacao), 1, ' '),
            RPAD(p_co_curso, 2, ' '), '2', 
            RPAD('escola' || LPAD(ROW_NUMBER() OVER (ORDER BY r.NO_ALUNO), 9, '0'), 15, ' '),
            TO_DATE(r.DT_MATRICULA, 'DD/MM/YYYY'),
            TO_DATE(r.DT_CONCLUSAO, 'DD/MM/YYYY'),
            LPAD(p_carga_horaria, 3, '0'),
            '00394494000560', '57437670097', 
            '09701', 
            'DF',
            ADD_MONTHS(TO_DATE(r.DT_CONCLUSAO, 'DD/MM/YYYY'), 60), -- Validade 5 anos após a conclusão
            RPAD(NVL(f.SG_CATEGORIA_CNH, ' '), 4, ' '), 
            RPAD('99', 20, ' '),
            v_lote_id
        FROM TMP_RNCH_DEP_REL_CURSO r
        JOIN TMP_RNCH_DEP_FORM_CAD f ON r.NU_CPF = f.NU_CPF
        WHERE (TO_DATE(r.DT_CONCLUSAO, 'DD/MM/YYYY') - TO_DATE(r.DT_MATRICULA, 'DD/MM/YYYY')) >= 5;

        v_qtd_registros := SQL%ROWCOUNT;

        -- 3. AUDITORIA APROVADOS
        INSERT INTO TB_RNCH_DEP_AUD_APROVADO (
            NU_CPF, DT_MATRICULA, DT_FIM_CURSO, 
            NO_CURSO, NO_ORGAO, TP_SEXO, SG_UF_ALUNO, NO_MUNICIPIO_ALUNO, NU_NOTA,
            CO_LOTE, DH_AUDITORIA
        )
        SELECT 
            r.NU_CPF, TO_DATE(r.DT_MATRICULA, 'DD/MM/YYYY'), TO_DATE(r.DT_CONCLUSAO, 'DD/MM/YYYY'), 
            r.NO_CURSO, r.NO_ORGAO, 
            CASE WHEN UPPER(r.TP_SEXO) LIKE 'M%' THEN 'M' ELSE 'F' END,
            r.SG_UF_ALUNO, r.NO_MUNICIPIO_ALUNO, 
            TO_NUMBER(REPLACE(r.NU_NOTA, '.', ',')),
            v_lote_id, SYSTIMESTAMP
        FROM TMP_RNCH_DEP_REL_CURSO r
        JOIN TMP_RNCH_DEP_FORM_CAD f ON r.NU_CPF = f.NU_CPF
        WHERE (TO_DATE(r.DT_CONCLUSAO, 'DD/MM/YYYY') - TO_DATE(r.DT_MATRICULA, 'DD/MM/YYYY')) >= 5
          AND NOT EXISTS (
              SELECT 1 FROM TB_RNCH_DEP_AUD_APROVADO A
              WHERE A.NU_CPF       = r.NU_CPF
                AND A.NO_CURSO     = r.NO_CURSO
                AND A.DT_FIM_CURSO = TO_DATE(r.DT_CONCLUSAO, 'DD/MM/YYYY')
          );

        -- 4. LOG
        v_log_mensagem := 'Lote ' || v_lote_id || ' processado com sucesso. Registros gerados na ETL para o SERPRO: ' || v_qtd_registros;
        
        INSERT INTO TB_RNCH_DEP_AUD_LOG (DS_MENSAGEM, NO_USUARIO, CO_LOTE) 
        VALUES (v_log_mensagem, v_user_safe, v_lote_id);
        
        -- 5. LIMPEZA DA TEMPORÁRIA
        LIMPAR_STAGING;
        COMMIT;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            v_log_mensagem := 'Erro FATAL no processamento: ' || SQLERRM || ' | Status: ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;
            INSERT INTO TB_RNCH_DEP_AUD_LOG (DS_MENSAGEM, NO_USUARIO, CO_LOTE) 
            VALUES (v_log_mensagem, v_user_safe, v_lote_id);
            COMMIT; -- Salvar o log de erro 
            RAISE; 

    END PROCESSAR_ARQUIVOS;

END PKG_RNCH_DEP;
/
