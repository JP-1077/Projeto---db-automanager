CREATE VIEW vw_projetos_em_planejado AS

SELECT
	nome_projeto,
    descricao_projeto,
    data_inicio_projeto,
    data_fim_projeto
FROM
	projetos
WHERE
	status_projeto = 'Planejado';
    
SELECT * FROM vw_projetos_em_planejado
    
