/* 
	=================================================================================
    Nome do Script: Índices TB_CLIENTES.sql
    Objetivo do código: Script responsável por criar índices na tabela clientes do 
    banco de dados tecsolutions.
    Autor: João Pedro Mendes Fonseca 
    ---------------------------------------------------------------------------------
    índices Criados:
		- idx_nome_cliente:Índice nesta coluna para otimizar as consultas pelo nome.
        - idx_cnpj_cnpj: Índice nesta coluna para otimizar as consultas pelo cnpj.
	---------------------------------------------------------------------------------
    Benefícios:
		- Melhor desempenho em consultas que envolvem ambas as colunas da base.
        - Melhor cruzamento (Joins) entre as tabelas utilizando esses campos. 
	=================================================================================
*/

-- Criado índice na coluna "nome_cliente" da tabela "Clientes".
CREATE INDEX idx_nome_cliente ON Clientes (nome_cliente);
-- Criado índice na coluna "cnpj" da tabela "Clientes".
CREATE INDEX idx_cnpj_cliente ON Clientes (cnpj_cliente);

