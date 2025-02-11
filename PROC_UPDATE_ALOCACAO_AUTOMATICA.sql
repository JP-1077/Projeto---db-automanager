/*  
    =================================================================================
    Nome da Procedure: PROC_UPDATE_ALOCACACAO_AUTOMATICA
    Descrição: Insere automaticamente uma quantidade definida de alocações de membros em projetos.
    Autor: João Pedro Mendes Fonseca
    Data de Criação: 2025-02-11
    Última Modificação: 2025-02-11
    ---------------------------------------------------------------------------------
    Parâmetros:
        - `quantidade` (INT) - Número de registros de alocação a serem inseridos.
    ---------------------------------------------------------------------------------
    Retorno:
        - Não retorna valores diretamente, apenas insere registros na tabela "Alocacao_Membros_Projetos".
    ---------------------------------------------------------------------------------
    Regras de Negócio:
        - Cada alocação é feita com um membro e um projeto aleatórios existentes.
        - A data de início da alocação será aleatória dentro do próximo ano (0 a 365 dias a partir de hoje).
        - A data de fim será entre 30 e 365 dias após a data de início.
        - O membro e o projeto devem existir na base de dados, garantindo integridade referencial.
    =================================================================================
*/
DELIMITER $$

CREATE PROCEDURE PROC_UPDATE_ALOCACACAO_AUTOMATICA(IN quantidade INT)
BEGIN
    DECLARE contador INT DEFAULT 0;
    DECLARE max_membro INT;
    DECLARE max_projeto INT;

    -- Pegamos os IDs máximos existentes para evitar erro de FK
    SELECT MAX(id_membro) INTO max_membro FROM Equipe_Projeto;
    SELECT MAX(id_projeto) INTO max_projeto FROM Projetos;

    WHILE contador < quantidade DO
        INSERT INTO Alocacao_Membros_Projetos (id_membro, id_projeto, data_inicio_alocacao, data_fim_alocacao)
        VALUES (
            FLOOR(1 + RAND() * max_membro), -- Membro aleatório existente
            FLOOR(1 + RAND() * max_projeto), -- Projeto aleatório existente
            DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), -- Data de início aleatória
            DATE_ADD(CURDATE(), INTERVAL FLOOR(30 + RAND() * 365) DAY) -- Data de fim aleatória
        );
        SET contador = contador + 1;
    END WHILE;
END $$

DELIMITER ;
