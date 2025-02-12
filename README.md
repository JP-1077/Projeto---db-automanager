# 🧰 MODELAGEM DE BANCO DE DADOS (DB AutoManager)

#

## ✍🏼**Introdução**
**DB AutoManager** é um sistema automatizado para gerenciamento de banco de dados MySQL. Ele gera, atualiza e mantém tabelas de **Clientes, Projetos, Equipes e Alocações** de forma automática.

#

## 📌 **Funcionalidades**
✅ **Geração Automática de Dados**: Acontece UPDATES automáticos nas tabelas, realiznaod INSERT de novas informações nas bases.

✅ **Eventos Agendados**: O banco de dados é atualizado automaticamente diariamente às 05:00. 

✅ **Automação Completa**: Uma única execução já popula o banco e mantém os dados organizados e atualizados em D-0.

#

##  ⚙ **Tecnologias Utilizadas**
- **MySQL Workbench**
- **Linguagem SQL**

#

##  🔧**Estrutura do Banco de Dados**
### **🗃️ Tabelas**
- `Clientes` → Armazena dados de empresas.  
- `Projetos` → Registra projetos vinculados aos clientes/empresas.  
- `Equipe_Projeto` → Contém informações dos membros da equipe.  
- `Alocacao_Membros_Projetos` → Relaciona membros a projetos.

- ### **🗃️ Procedures**
- `PROC_INSERT_CLIENTES` → Inserir dados na tabela clientes.
- `PROC_INSERT_PROJETOS` → Inserir dados na tabela clientes.
- `PROC_ALOCACAO_EQUIPE_PROJETOS` → Inserir dados na tabela alocacao equipe.
- `PROC_POPULAR_BANCO` → Insere dados fixos pra todas as tabelas do banco.
- `PROC_UPDATE_CLIENTES_AUTOMATICO` → Insere automaticamente uma quantidade definida de clientes fictícios na tabela "clientes".
- `PROC_GERAR_PROJETOS_ALEATORIOS` → Insere automaticamente uma quantidade definida de projetos fictícios na tabela "Projetos".
- `PROC_UPDATES_EQUIPE_AUTOMATICOS` → Insere automaticamente uma quantidade definida de membros fictícios na equipe de projetos.
- `PROC_UPDATE_ALOCACACAO_AUTOMATICA` → Insere automaticamente uma quantidade definida de alocações de membros em projetos.

- ### **🗃️ Views**
- `vw_clientes_projetos` → Lista todos os clientes e os projetos vinculados a eles.
- `vw_clientes_projetos_atrasados ` →  Exibe clientes que possuem projetos atrasados.
- `vw_membros_projetos`→  Mostra quais membros da equipe estão alocados em quais projetos.
- `vw_projetos_em_planejado` → Filtra os projetos que estão na fase de planejamento.
- `vw_projetos_em_progresso` →  Exibe os projetos que estão em andamento.

- ### **🗃️ índices**
- `idx_id_membro` → Índice nesta coluna para otimizar as consultas pelo nome dos membros.
- `idx_id_projeto` → Índice nesta coluna para otimizar as consultas pelo nome dos projetos.
- `idx_nome_membros`→ Índice nesta coluna para otimizar as consultas pelo nome dos membros.
- `idx_nome_cliente` → Índice nesta coluna para otimizar as consultas pelo nome.
- `idx_cnpj_cliente` → Índice nesta coluna para otimizar as consultas pelo cnpj.
- `idx_nome_projeto` → Índice nesta coluna para otimizar as consultas pelo nome do Projeto.
- `idx_id_cliente ` → Índice nesta coluna para melhorar os cruzamentos entre tabela de Cliente e Projeto.

- ### **🗃️ Eventos**
- `EV_ATUALIZACAO_DIARIAS_TABELAS` →  Evento agendado para executar automaticamente a atualização diária das tabelas.

# 

##  ✔ **Estrutura do Banco de Dados**
O projeto `MODELAGEM DE BANCO DE DADOS (DB AutoManager)` foi desenvolvido com o objetivo de criar e automatizar a gestão de um banco de dados relacional voltado para o gerenciamento de uma empresa de consultoria. A estrutura do banco segue as boas práticas de modelagem dos dados, garantindo a integridade, eficiência nas consultas e facilidade de manutenção.

A implementação das procedures dinâmicas permite a inserção e atualização automática dos dados, enquanto os eventos agendados no MySQL garantem a execução periódica das atualizações, tornando o banco mais dinâmico e reduzindo a necessidade de intervenções manuais.

As views criadas facilitam a análise dos dados, permitindo consultas rápidas e eficientes sobre o status dos projetos, os clientes envolvidos e a alocação das equipes.

### **Resultados e Benefícios**
✅ Banco de dados estruturado e otimizado para consultas eficientes.

✅ Automação na atualização de dados, reduzindo trabalho manual.

✅ Organização clara das relações entre clientes, projetos e equipes.

✅ Monitoramento facilitado através das views criadas.

Com essa estrutura, o DB AutoManager pode ser expandido e adaptado para diferentes necessidades, sendo uma solução eficaz para empresas que gerenciam múltiplos projetos e equipes. 🚀😃
