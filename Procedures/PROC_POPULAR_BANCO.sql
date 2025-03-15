DELIMITER $$

CREATE PROCEDURE PROC_POPULAR_BANCO()
BEGIN
    CALL PROC_INSERT_CLIENTES('Empresa X', '00.000.000/0001-00', 'contato@empresax.com', '(11) 99999-9999');
    CALL PROC_INSERT_CLIENTES('Empresa Y', '11.111.111/0001-11', 'contato@empresay.com', '(11) 98888-8888');
	CALL PROC_INSERT_CLIENTES('Empresa Z', '22.222.222/0001-22', 'contato@empresaz.com', '(11) 97777-7777');
    CALL PROC_INSERT_CLIENTES('Empresa W', '33.333.333/0001-33', 'contato@empresaw.com', '(11) 96666-6666');
    CALL PROC_INSERT_CLIENTES('Empresa V', '44.444.444/0001-44', 'contato@empresav.com', '(11) 95555-5555');
    CALL PROC_INSERT_CLIENTES('Empresa U', '55.555.555/0001-55', 'contato@empresau.com', '(11) 94444-4444');
    CALL PROC_INSERT_CLIENTES('Empresa T', '66.666.666/0001-66', 'contato@empresat.com', '(11) 93333-3333');

    
    CALL PROC_INSERT_Projetos('Projeto Alpha', 'Desenvolvimento de software', '2024-01-01', '2024-12-31', 'Em andamento', 1);
    CALL PROC_INSERT_Projetos('Projeto Beta', 'Infraestrutura de TI', '2024-02-15', '2024-11-30', 'Planejado', 2);
	CALL PROC_INSERT_Projetos('Projeto Gama', 'Segurança Cibernética', '2024-03-01', '2024-12-31', 'Em andamento', 3);
    CALL PROC_INSERT_Projetos('Projeto Delta', 'Expansão de Data Center', '2024-04-10', '2025-03-30', 'Planejado', 4);
    CALL PROC_INSERT_Projetos('Projeto Epsilon', 'Automação de Processos', '2024-05-05', '2025-02-15', 'Concluído', 5);
    CALL PROC_INSERT_Projetos('Projeto Zeta', 'Desenvolvimento de Aplicativo', '2024-06-01', '2025-06-01', 'Em andamento', 6);
    CALL PROC_INSERT_Projetos('Projeto Theta', 'Projeto de Pesquisa AI', '2024-07-10', '2025-07-10', 'Planejado', 7);

    
    CALL PROC_INSERIR_MEMBRO_EQUIPE('João Silva', 'Desenvolvedor', 'joao@email.com', '(11) 97777-7777');
    CALL PROC_INSERIR_MEMBRO_EQUIPE('Maria Souza', 'Gerente de Projetos', 'maria@email.com', '(11) 96666-6666');
	CALL PROC_INSERIR_MEMBRO_EQUIPE('Carlos Mendes', 'Analista de Segurança', 'carlos@email.com', '(11) 95555-5555');
    CALL PROC_INSERIR_MEMBRO_EQUIPE('Ana Oliveira', 'Engenheira de Software', 'ana@email.com', '(11) 94444-4444');
    CALL PROC_INSERIR_MEMBRO_EQUIPE('Ricardo Santos', 'Arquiteto de TI', 'ricardo@email.com', '(11) 93333-3333');
    CALL PROC_INSERIR_MEMBRO_EQUIPE('Fernanda Lima', 'DBA', 'fernanda@email.com', '(11) 92222-2222');
    CALL PROC_INSERIR_MEMBRO_EQUIPE('Lucas Pereira', 'Scrum Master', 'lucas@email.com', '(11) 91111-1111');

    
    CALL PROC_ALOCACAO_EQUIPE_PROJETO(1, 1, '2024-01-01', '2024-06-30');
    CALL PROC_ALOCACAO_EQUIPE_PROJETO(2, 2, '2024-02-15', '2024-12-31');
	CALL PROC_ALOCACAO_EQUIPE_PROJETO(3, 3, '2024-03-05', '2024-11-30');
    CALL PROC_ALOCACAO_EQUIPE_PROJETO(4, 4, '2024-04-20', '2025-03-20');
    CALL PROC_ALOCACAO_EQUIPE_PROJETO(5, 5, '2024-05-10', '2025-02-10');
    CALL PROC_ALOCACAO_EQUIPE_PROJETO(6, 6, '2024-06-15', '2025-06-15');
    CALL PROC_ALOCACAO_EQUIPE_PROJETO(7, 7, '2024-07-01', '2025-07-01');
END $$

DELIMITER ;