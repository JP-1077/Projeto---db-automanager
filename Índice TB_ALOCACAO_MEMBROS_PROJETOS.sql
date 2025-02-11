/* 
	=================================================================================
    Nome do Script: Índices TB_ALOCACAO_MEMBROS.sql
    Objetivo do código: Script responsável por criar índices na tabela alocacao_membros_projetos
    do banco de dados tecsolutions.
    Autor: João Pedro Mendes Fonseca 
    ---------------------------------------------------------------------------------
    índices Criados:
		- idx_nome_membro:Índice nesta coluna para otimizar as consultas pelo nome 
        dos membros.
        
		- idx_nome_projeto:Índice nesta coluna para otimizar as consultas pelo nome 
        dos projetos.
	---------------------------------------------------------------------------------
    Benefícios:
		- Melhor desempenho em consultas que envolvem ambas as colunas da base.
        - Melhor cruzamento (Joins) entre as tabelas utilizando esses campos. 
	=================================================================================
*/

--
CREATE INDEX idx_id_membro ON alocacao_membros_projetos (id_membro);

--
CREATE INDEX idx_id_projeto ON alocacao_membros_projetos (id_projeto);