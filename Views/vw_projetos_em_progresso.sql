CREATE VIEW vw_projetos_em_progresso AS

SELECT
	nome_projeto,
    descricao_projeto,
    data_inicio_projeto,
    data_fim_projeto
FROM
	projetos
WHERE
	status_projeto = 'Em andamento';
    
SELECT * FROM vw_projetos_em_progresso