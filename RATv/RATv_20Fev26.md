# RATv 20/02/2026

**Tags:** `#MJSP #APEX/MJSP #RNCH #RNCH_v1`

## Resumo Claro (Gestão)
O escopo das atividades envolveu a análise estrutural, refatoração e o fortalecimento do sistema RENACH-DEP, visando à transição para a nova versão da aplicação (RNCH_v1). Procedeu-se com uma auditoria técnica na tabela final de exportação (`RNCH_DEP_TB_ETL_FINAL`), o que resultou na elaboração de um dicionário de dados detalhado acerca do layout posicional. Adicionalmente, atendeu-se à necessidade de flexibilização do Código do Curso, implementando-se uma estrutura parametrizada no banco de dados e na interface APEX. Essa modificação permite alternar entre os códigos "Especializado `04`" e "Atualização `14`" sem comprometer a estabilidade do aplicativo legado. Por fim, solucionou-se um impedimento crítico na exportação de dados via arquivo CSV (Página 10) e foram formalizadas as novas diretrizes estruturais para a confecção de relatórios de atividades para o projeto.

## Detalhamento Técnico (Artefatos Entregues)

1. **Dicionário Posicional e Análise Estrutural ETL:**
   - **Contexto / Causa:** Necessidade de mapeamento minucioso de como as fontes de dados (Moodle e Formulário) compõem as posições fixas manipuladas via LPAD/RPAD no arquivo a ser lido pelo SERPRO.
   - **Solução Adotada:** Mapeamento exato de cada coluna da tabela `RNCH_DEP_TB_ETL_FINAL`, gerando um artefato de documentação analítica que esclarece a distribuição dos 152 caracteres previstos no layout e a origem de cada dado inserido.

2. **Inclusão do Seletor Dinâmico de `CO_CURSO` (04 / 14):**
   - **Contexto / Causa:** O código do curso apresentava-se fixado ("Hardcoded") no valor numérico `04` dentro das procedures de carga, limitando as integrações referentes aos cursos de atualização.
   - **Solução Adotada:** 
     - A procedure `PROCESSAR_ARQUIVOS` do pacote `PKG_RNCH_DEP` foi modificada para receber a variável `p_co_curso IN VARCHAR2 DEFAULT '04'`.
     - O uso da cláusula sintática `DEFAULT '04'` assegurou a operação fluida das instâncias (versão legada) que não enviam este parâmetro, garantindo a robustez retroativa exigida.
     - Disponibilização de blocos PL/SQL para o processo do botão APEX responsável por capturar o Select List (`P10_CO_CURSO`) na nova versão do aplicativo.

3. **Correção de Exportação (CSV Vazio) na Página 10:**
   - **Contexto / Causa:** A submissão dos arquivos pelos usuários e o subsequente acionamento do botão gerador de CSV resultava em planilhas vazias devido à ineficácia do bloqueio "WHERE CO_LOTE = :P10_LOTE_GERADO" num cenário de perdas de vínculo de sessão nativa na chamada assíncrona da API `apex_data_export`.
   - **Solução Adotada:** Exclusão da variável condicional de lote, visto que a rotina `PROCESSAR_ARQUIVOS` garante a limpeza sistêmica anterior da tabela via instrução `DELETE`. A reestruturação prioriza o `ORDER BY NU_SEQ_TRANS ASC` em resgate à carga atômica inserida exclusivamente para aquele agrupamento.

4. **Auditoria de Dependências vs Novo App RNCH_V1:**
   - **Contexto / Causa:** Solicitação de verificação de impacto do novo Application Builder (ID 211) comparado ao design atual do banco de dados relacional.
   - **Solução Adotada:** Através de buscas de padrões em Scripts DDL, atestou-se formalmente que o novo app APEX não requer a criação de nenhuma nova estrutura de tabela/view, e que ambos os aplicativos conviverão utilizando a malha consolidada existente.

5. **Padrão Oficial de RATv (Projeto RNCH):**
   - **Contexto / Causa:** Exigência de um canal oficial de rastreabilidade para auditorias sistêmicas diárias, replicando frameworks estáveis de outros sistemas.
   - **Solução Adotada:** Estruturação de um documento basilar e normativo (em formato orientativo de Markdown) para as emissões oficiais de "Report Diário do DEV" com uma quebra executiva x técnica.

## Relação de Arquivos (Scripts e Documentações)
- `01_backend_padrao_FINAL.sql`: Modificado Package `PKG_RNCH_DEP` para inserção dinâmica com restrição garantida `DEFAULT 04`.
- `processar_v00.sql`: Processo PL/SQL otimizado que insere estagiamentos e dispara a referida PKG acionando campo atrelado `:P10_CO_CURSO`.
- `gerar-csv_v00.sql`: Processo APEX de exportação refatorado (removido gatilho situacional de Sessão/Lote).
- `diretrizes_ratv.md`: Template normativo de report diário para este projeto.
- `analysis_etl_table.md`: Relatório oficial de escrutínio das posições de Layout SERPRO.
