CREATE VIEW vw_membros_projetos AS

SELECT
	m.nome_membro,
    m.cargo_membro,
    p.nome_projeto,
    p.status_projeto
FROM 
	equipe_projeto m
    
JOIN
	alocacao_membros_projetos a ON m.id_membro = a.id_membro
JOIN
	projetos p ON a.id_projeto = p.id_projeto;