DECLARE
    v_blob_relatorio    BLOB;
    v_blob_formulario   BLOB;
    v_nome_arq_relatorio VARCHAR2(255);
    v_nome_arq_formulario VARCHAR2(255);
    v_lote_id           NUMBER;
BEGIN
    -- 1. Captura os nomes
    v_nome_arq_relatorio := :P10_ARQUIVO_RELATORIO;
    v_nome_arq_formulario := :P10_ARQUIVO_CADASTRO; -- CORRIGIDO (Nome da sua tela)

    -- 2. LIMPEZA (CRÍTICO: Deve ser a PRIMEIRA AÇÃO)
    PKG_RNCH_DEP.LIMPAR_STAGING;

    -- 3. Recupera os BLOBs
    BEGIN
        SELECT blob_content INTO v_blob_relatorio
        FROM apex_application_temp_files WHERE name = v_nome_arq_relatorio;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Arquivo de Relatório não encontrado: ' || v_nome_arq_relatorio);
    END;

    BEGIN
        SELECT blob_content INTO v_blob_formulario
        FROM apex_application_temp_files WHERE name = v_nome_arq_formulario;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Arquivo de Formulário não encontrado: ' || v_nome_arq_formulario);
    END;

    -- 4. Carrega Tabela Relatório
    INSERT INTO RNCH_DEP_TB_STG_REL_CURSO (
        NO_CURSO, NO_ORGAO, NO_ALUNO, DS_PERFIL, NU_CPF, TP_SEXO,
        SG_UF_ALUNO, NO_MUNICIPIO_ALUNO, NU_NOTA, DT_MATRICULA, DT_CONCLUSAO
    )
    SELECT
        col001, col002, col003, SUBSTR(col004, 1, 50), col005, col006,
        col007, col008, col009, col011, col012
    FROM TABLE(APEX_DATA_PARSER.PARSE(
        p_content => v_blob_relatorio,
        p_file_name => v_nome_arq_relatorio,
        p_csv_col_delimiter => ';',
        p_skip_rows => 1
    ));

    -- 5. Carrega Tabela Formulário
    INSERT INTO RNCH_DEP_TB_STG_FORM_CAD (NU_CPF, NU_CNH, SG_CATEGORIA_CNH)
    SELECT col003, col009, col010
    FROM table(apex_data_parser.parse(
        p_content           => v_blob_formulario,
        p_file_name         => 'formulario.csv', -- Nome ficticio pois vem do banco
        p_csv_col_delimiter => ',', 
        p_skip_rows         => 1
    ));

    -- 6. Processa
    PKG_RNCH_DEP.PROCESSAR_ARQUIVOS(
        p_seq_inicio       => TO_NUMBER(:P10_SEQ_INICIO),
        p_tipo_atualizacao => :P10_TIPO_ATUALIZACAO,
        p_carga_horaria    => :P10_CARGA_HORARIA,
        p_lote_id          => v_lote_id
    );

    :P10_LOTE_GERADO := v_lote_id;
    apex_application.g_print_success_message := 'Processamento concluído! Lote ID: ' || v_lote_id;
END;