CREATE VIEW vw_clientes_projetos_atrasados AS
SELECT
    c.nome_cliente,
    p.nome_projeto,
    p.data_fim_projeto
FROM
    Clientes c
JOIN
    Projetos p ON c.id_cliente = p.id_cliente
WHERE
    p.data_fim_projeto < CURDATE();
    
SELECT * FROM vw_clientes_projetos_atrasados;
SELECT * FROM projetos