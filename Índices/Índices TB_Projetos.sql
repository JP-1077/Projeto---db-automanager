/* 
	=================================================================================
    Nome do Script: Índices TB_PROJETOS.sql
    Objetivo do código: Script responsável por criar índices na tabela projetos do 
    banco de dados tecsolutions.
    Autor: João Pedro Mendes Fonseca 
    ---------------------------------------------------------------------------------
    índices Criados:
		- idx_nome_projeto:Índice nesta coluna para otimizar as consultas pelo nome 
        do Projeto.
        - idx__id_cliente: Índice nesta coluna para melhorar os cruzamentos entre 
        tabela de Cliente e Projeto.
	---------------------------------------------------------------------------------
    Benefícios:
		- Melhor desempenho em consultas que envolvem ambas as colunas da base.
        - Melhor cruzamento (Joins) entre as tabelas utilizando esses campos. 
	=================================================================================
*/

-- Criado índice na coluna "nome_projeto" da tabela "Projeto".
CREATE INDEX idx_nome_projeto ON Projetos (nome_projeto);

-- Criado índice na coluna "id_cliente" da tabela "Cliente".
CREATE INDEX idx_id_cliente ON Projetos (id_cliente)