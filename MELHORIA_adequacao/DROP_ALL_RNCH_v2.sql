--------------------------------------------------------
--  Arquivo: DROP_RNCH_v2.sql
--  Autor: Antigravity/Renach-DEP
--  Data: 03/03/2026
--  Descrição: Script para limpar as tabelas antigas antes 
--             de rodar o DDL nova.
--  Instrução: Rode isso no APEX SQL Scripts e ignore 
--             os erros de "Tabela não existe".
--------------------------------------------------------

DROP TABLE "TMP_RNCH_DEP_FORM_CAD" CASCADE CONSTRAINTS;
DROP TABLE "TMP_RNCH_DEP_REL_CURSO" CASCADE CONSTRAINTS;
DROP TABLE "TMP_RNCH_DEP_SERPRO" CASCADE CONSTRAINTS;
DROP TABLE "TB_RNCH_DEP_AUD_APROVADO" CASCADE CONSTRAINTS;
DROP TABLE "TB_RNCH_DEP_AUD_BLOQUEADO" CASCADE CONSTRAINTS;
DROP TABLE "TB_RNCH_DEP_AUD_LOG" CASCADE CONSTRAINTS;
DROP TABLE "TB_RNCH_DEP_ETL" CASCADE CONSTRAINTS;
DROP TABLE "TB_RNCH_DEP_SERPRO" CASCADE CONSTRAINTS;

DROP VIEW "VW_RNCH_DEP_RELATORIO_CONSOLIDADO";
DROP VIEW "VW_RNCH_DEP_ETL_CSV";
