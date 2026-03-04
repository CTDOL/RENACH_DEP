--------------------------------------------------------
--  Arquivo: LIMPAR_DADOS_RNCH_v2.sql
--  Autor: Antigravity/Renach-DEP
--  Data: 03/03/2026
--  Descrição: Script para limpar todos os registros das
--             tabelas finais da aplicação RNCH-v2.
--  Instrução: Rode no Comandos SQL (SQL Commands) do APEX
--             ou faça upload no SQL Scripts.
--------------------------------------------------------

BEGIN
    -- Apaga dados da ETL final e auditorias sem apagar a tabela em si
    DELETE FROM "TB_RNCH_DEP_ETL";
    DELETE FROM "TB_RNCH_DEP_SERPRO";
    DELETE FROM "TB_RNCH_DEP_AUD_APROVADO";
    DELETE FROM "TB_RNCH_DEP_AUD_BLOQUEADO";
    
    -- Se quiser zerar também o Log histórico, descomente a linha abaixo:
    -- DELETE FROM "TB_RNCH_DEP_AUD_LOG";
    
    COMMIT;
END;
/
