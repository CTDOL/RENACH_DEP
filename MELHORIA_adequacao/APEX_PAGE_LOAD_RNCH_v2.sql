--------------------------------------------------------
--  Arquivo: APEX_PAGE_LOAD_RNCH_v2.sql
--  Autor: Antigravity/Renach-DEP
--  Data: 03/03/2026
--  Descrição: Script PL/SQL para ser usado num botão de "Processar Arquivos"
--             na nova página RNCH-v2 do Oracle APEX.
--             Faz a leitura de 2 campos File Browse e carrega usando
--             o APEX_DATA_PARSER.
--------------------------------------------------------

/*
PRÉ-REQUISITOS NA PÁGINA APEX (RNCH-v2):
----------------------------------------
1. Item de arquivo 01: PXX_FILE_RELATORIO (Para o relatorio-cursos.csv)
2. Item de arquivo 02: PXX_FILE_MOODLE (Para o formulario_cadastro.csv)
3. Item de texto: PXX_TIPO_ATUALIZACAO (Para informar Inclusão/Atualização, Ex: "I")
4. Item de texto: PXX_CARGA_HORARIA (Para informar Carga Horária, Ex: "60")
5. Item de texto: PXX_CO_CURSO (Código do curso especial, Ex: "04")

Criar um Processo do tipo executado ao Submeter a página (Botão "Processar").
Copiar o bloco abaixo e substituir os :PXX_ correspondentes aos itens da sua página.
*/

DECLARE
    v_lote_id NUMBER;
    v_seq_inicio NUMBER := 1;
BEGIN
    
    -- 1. Limpa as tabelas temporárias globais para garantir sessão vazia
    PKG_RNCH_DEP.LIMPAR_STAGING;

    -- 2. Carregar o Arquivo: relatorio-cursos (SGA)
    IF :PXX_FILE_RELATORIO IS NOT NULL THEN
        INSERT INTO TMP_RNCH_DEP_REL_CURSO (
            NO_CURSO, NO_ORGAO, NO_ALUNO, DS_PERFIL, NU_CPF,
            TP_SEXO, SG_UF_ALUNO, NO_MUNICIPIO_ALUNO, NU_NOTA,
            DT_MATRICULA, DT_CONCLUSAO
        )
        SELECT 
            col001, col002, col003, col004, col005, 
            col006, col007, col008, col009, 
            col011, col012
        FROM apex_application_temp_files f, 
             TABLE( apex_data_parser.parse(
                  p_content                     => f.blob_content,
                  p_add_headers_row             => 'Y',
                  p_skip_rows                   => 1, -- Pula o cabeçalho
                  p_csv_col_delimiter           => ';',
                  p_file_name                   => f.filename
             ) ) p
        WHERE f.name = :PXX_FILE_RELATORIO;
    END IF;

    -- 3. Carregar o Arquivo: formulario_cadastro (MOODLE)
    IF :PXX_FILE_MOODLE IS NOT NULL THEN
        -- No Relatório Moodle: 
        -- CPF estaria na col003 ("Identificação de usuário")
        -- CNH na col009 ("QUESTÃO 1...")
        -- Categoria na col010 ("QUESTÃO 2...")
        INSERT INTO TMP_RNCH_DEP_FORM_CAD (
            NU_CPF,
            NU_CNH,
            SG_CATEGORIA_CNH
        )
        SELECT 
            col003, col009, col010
        FROM apex_application_temp_files f, 
             TABLE( apex_data_parser.parse(
                  p_content                     => f.blob_content,
                  p_add_headers_row             => 'Y',
                  p_skip_rows                   => 1, -- Pula o cabeçalho
                  p_file_name                   => f.filename
             ) ) p
        WHERE f.name = :PXX_FILE_MOODLE;
    END IF;

    -- 4. Processar via Package Otimizada
    -- (Esse método já fará a higienização de REGEXP da temp e gravará as trilhas corretas)
    PKG_RNCH_DEP.PROCESSAR_ARQUIVOS(
        p_seq_inicio       => :PXX_SEQ_INICIO,       -- Valor dinâmico do Operador Ex: 1 ou "000001"
        p_tipo_atualizacao => :PXX_TIPO_ATUALIZACAO, -- Valor de Origem Ex: "I"
        p_carga_horaria    => :PXX_CARGA_HORARIA,    -- Valor de Origem Ex: "060"
        p_co_curso         => :PXX_CO_CURSO,         -- Valor de Origem Ex: "04"
        p_lote_id          => v_lote_id
    );

    -- APEX Notification / Passar para ID de página:
    -- Exemplo: 
    -- :PXX_ULTIMO_LOTE_GERADO := v_lote_id;
    -- apex_application.g_print_success_message := 'Lote '||v_lote_id||' gerado com Sucesso!';

EXCEPTION
    WHEN OTHERS THEN
        apex_error.add_error (
            p_message          => 'Ocorreu um erro na carga ou processamento dos dados. ' || SQLERRM,
            p_display_location => apex_error.c_inline_in_notification 
        );
END;
