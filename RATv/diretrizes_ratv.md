# Diretrizes para Elaboração de RATv - Projeto RNCH_v1

Este documento estabelece o padrão de formatação e conteúdo para os Relatórios de Atividades (RATv) do projeto **RENACH-DEP (RNCH_v1)**, com base nas práticas adotadas em projetos do Ministério da Justiça e Segurança Pública (ex: projeto GEP).

O objetivo do RATv é fornecer um documento compreensível para a gestão (por meio de um resumo executivo) e detalhado o suficiente para as equipes técnica e de auditoria, registrando scripts, regras de negócio e soluções aplicadas.

---

## 📄 Estrutura Padrão do RATv

Cada relatório deve ser salvo em formato PDF (ou gerado a partir de um Markdown) e seguir a ordenação descrita abaixo.

### 1. Cabeçalho e Metadados
Deve conter o título do relatório indicando a data da atividade, seguido das tags de rastreabilidade.
- **Formato do Título:** `RATv DD/MM/AAAA` (ex: *RATv 20/02/2026*)
- **Tags Recomendadas:** `#MJSP #APEX/MJSP #RNCH`

### 2. Resumo Claro (Gestão)
Uma seção narrativa (de 1 a 2 parágrafos) redigida em linguagem clara e objetiva.
- **Objetivo:** Explicar sucintamente o foco do período reportado.
- **Conteúdo:** Descrever o problema de negócio solucionado, o valor entregue, as decisões arquiteturais de nível macro tomadas e os próximos passos ou dependências, caso existam.

### 3. Detalhamento Técnico (Artefatos Entregues)
Esta é a seção central para a equipe de desenvolvimento e banco de dados. Deve ser estruturada como uma lista numerada contendo as tarefas ou entregas realizadas.
- Para cada item da lista, deve-se adotar a seguinte estrutura:
  - **Identificação do Item:** Ex: *1. Estabilização da Geração do Arquivo Posicional (Página 10)*
  - **Contexto / Causa:** Qual limitação existia (ex: "Necessidade de alternar dinamicamente o agrupamento de curso entre 04 e 14").
  - **Solução Adotada:** O que foi executado no banco de dados e na interface APEX (ex: "Adequação da PKG_RNCH_DEP para receber o p_co_curso e criação de Select List").

### 4. Relação de Arquivos (Scripts e Documentações)
Abaixo dos detalhamentos, deve ser apresentada uma lista (em tópicos) com os nomes exatos dos artefatos produzidos (arquivos `.sql` ou `.md`) que fazem parte da entrega documentada.
- Exemplo:
  - `01_backend_padrao_FINAL.sql`: (Atualizado) Inclusão do DEFAULT '04' na procedure de processamento.
  - `02_processa_pagina_10_FINAL.sql`: Bloco PL/SQL da página 10 refatorado.

### 5. Anexos de Roteiro de Validação (Quando Aplicável)
Se o RATv marcar a entrega de uma funcionalidade que requer homologação (ex: uma nova página ou fluxo de sistema), é recomendado anexar um roteiro direcionado aos responsáveis pelo teste.
Este anexo deve conter fluxos práticos estruturados em:
- **Ação:** O passo a passo que deve ser executado no sistema (ex: *Acessar o Assistente de Transmissão e anexar os arquivos CSV*).
- **Validação:** O resultado esperado no comportamento do sistema (ex: *A tela gerou o número do lote com sucesso? O arquivo CSV não foi processado vazio?*).
- **Adequação/Feedback:** Um espaço para o registro de sugestões relacionadas à experiência do usuário ou regras de negócio.

---

## 💡 Dicas de Manutenção do Repositório (RNCH_v1)
* Manter os arquivos de origem (`.md` ou `.docx`) estruturados na pasta `RNCH_v1/RATv/` no repositório.
* Exportar os relatórios no formato **PDF** para envio formal, validação externa ou registro em sistemas eletrônicos (como o SEI).
* Anexar diagramas simplificados ou trechos de configuração relevantes (ex: definições de blocos de interface ou regras de validação sistêmicas) quando constituírem o cerne da entrega registrada.
