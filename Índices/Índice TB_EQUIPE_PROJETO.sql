/* 
	=================================================================================
    Nome do Script: Índices TB_EQUIPE_PROJETO.sql
    Objetivo do código: Script responsável por criar índices na tabela equipe_projeto 
    do banco de dados tecsolutions.
    Autor: João Pedro Mendes Fonseca 
    ---------------------------------------------------------------------------------
    índices Criados:
		- idx_nome_membro:Índice nesta coluna para otimizar as consultas pelo nome 
        dos membros.
	---------------------------------------------------------------------------------
    Benefícios:
		- Melhor desempenho em consultas que envolvem ambas as colunas da base.
        - Melhor cruzamento (Joins) entre as tabelas utilizando esses campos. 
	=================================================================================
*/

-- -- Criado índice na coluna "nome_projeto" da tabela "Equipe_Projeto".
CREATE INDEX idx_nome_membro ON Equipe_Projeto (nome_membro);
