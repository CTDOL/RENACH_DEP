# RENACH_DEP

Aplicativo em **Oracle APEX** para consolidar aprovados (CVE/ACVE) e gerar arquivos de integração para o **SENATRAN**.

## Objetivo
O objetivo principal deste APP é extrair, processar e gerar relatórios no formato **CSV/Posicional** contendo a relação dos **APROVADOS** nos cursos **CVE** (Curso de Veículos de Emergência) e **ACVE** (Atualização do Curso de Veículos de Emergência). 

## 🚀 ROADMAP (RENACH DEP)

### 📌 Curto Prazo (MVP - Implementado/Em Ajustes)
- [x] Extração de dados brutos (Staging)
- [x] Regras de negócio de aprovação/bloqueio (Ex: Duração < 5 dias)
- [x] Geração de Tabela ETL Final para exportação (Formato BCA/SENATRAN)
- [x] Auditoria de Aprovados e Bloqueados
- [x] Log de execuções
- [x] Importação e tratamento de retornos do SERPRO

### 🔄 Médio Prazo (Próximos Passos)
- [ ] Otimização de Performance (Processamento em Background/Jobs)
- [ ] Dashboards Executivos de acompanhamento de transmissões (Taxa de Sucesso vs Erro)
- [ ] Alertas automatizados para Lotes com alto índice de rejeição SERPRO
- [ ] Interface melhorada para tratamento manual de rejeições do SERPRO

### 🔮 Longo Prazo (Visão de Futuro)
- [ ] Integração via API/Webservice direta com SENATRAN (Substituindo CSV/Arquivos)
- [ ] Automação completa do fluxo (Carga automática das bases de origem)
- [ ] Expansão para suporte a novos tipos de Cursos e Órgãos