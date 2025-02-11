/*  
    =================================================================================
    Nome da Procedure: PROC_GERAR_PROJETOS_ALEATORIOS
    Descrição: Insere automaticamente uma quantidade definida de projetos fictícios na tabela "Projetos".
    Autor: João Pedro Mendes Fonseca
    Data de Criação: 2025-02-11
    Última Modificação: 2025-02-11
    ---------------------------------------------------------------------------------
    Parâmetros:
        - `quantidade` (INT) - Número de projetos a serem inseridos.
    ---------------------------------------------------------------------------------
    Retorno:
        - Não retorna valores diretamente, apenas insere registros na tabela "Projetos".
    ---------------------------------------------------------------------------------
    Regras de Negócio:
        - Cada projeto recebe um nome aleatório no formato "Projeto X", onde X é uma letra de A a Z.
        - A descrição do projeto é escolhida aleatoriamente entre cinco opções predefinidas.
        - A data de início do projeto será aleatória dentro do próximo ano (0 a 365 dias a partir de hoje).
        - A data de fim será entre 30 e 365 dias após a data de início.
        - O status do projeto será aleatoriamente "Em andamento" ou "Planejado".
        - O projeto será associado a um cliente aleatório dentro do intervalo existente de IDs.
    =================================================================================
*/

DELIMITER $$

CREATE PROCEDURE PROC_GERAR_PROJETOS_ALEATORIOS(IN quantidade INT)
BEGIN
    -- Declaração de variáveis
    DECLARE contador INT DEFAULT 0;        -- Contador para controlar a quantidade de registros inseridos
    DECLARE max_cliente INT;               -- Armazena o maior ID de cliente existente
    DECLARE descricao_projeto TEXT;        -- Armazena uma descrição aleatória do projeto

    -- Obtém o maior ID de cliente para garantir que a FK seja válida
    SELECT MAX(id_cliente) INTO max_cliente FROM Clientes;

    -- Loop para inserir a quantidade especificada de projetos
    WHILE contador < quantidade DO

        -- Escolhe uma descrição aleatória para o projeto entre cinco opções predefinidas
        CASE FLOOR(RAND() * 5)
            WHEN 0 THEN SET descricao_projeto = 'Projeto de desenvolvimento de software para automação de processos.';
            WHEN 1 THEN SET descricao_projeto = 'Implantação de infraestrutura em nuvem para escalabilidade.';
            WHEN 2 THEN SET descricao_projeto = 'Criação de uma plataforma de e-commerce para aumentar as vendas online.';
            WHEN 3 THEN SET descricao_projeto = 'Otimização do banco de dados para melhorar a performance do sistema.';
            WHEN 4 THEN SET descricao_projeto = 'Desenvolvimento de uma aplicação mobile para Android e iOS.';
        END CASE;

        -- Inserindo um projeto aleatório
        INSERT INTO Projetos (
            nome_projeto, 
            descricao_projeto, 
            data_inicio_projeto, 
            data_fim_projeto, 
            status_projeto, 
            id_cliente
        ) VALUES (
            CONCAT('Projeto ', CHAR(65 + FLOOR(RAND() * 26))), -- Nome do projeto (Projeto A-Z)
            descricao_projeto, -- Descrição aleatória escolhida no CASE
            DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), -- Data de início aleatória dentro de 1 ano
            DATE_ADD(CURDATE(), INTERVAL FLOOR(30 + RAND() * 365) DAY), -- Data de fim entre 30 e 365 dias após início
            IF(RAND() > 0.5, 'Em andamento', 'Planejado'), -- Status aleatório do projeto
            FLOOR(1 + RAND() * max_cliente) -- Cliente aleatório existente
        );

        -- Incrementando o contador
        SET contador = contador + 1;
    END WHILE;
END $$

DELIMITER ;







