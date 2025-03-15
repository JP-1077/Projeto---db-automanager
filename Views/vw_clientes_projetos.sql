CREATE VIEW vw_clientes_projetos AS

SELECT
	c.nome_cliente,
    p.nome_projeto,
    p.status_projeto
FROM 
	clientes c
JOIN
	projetos p ON c.id_cliente = p.id_cliente;
    
SELECT * FROM vw_clientes_projetos
