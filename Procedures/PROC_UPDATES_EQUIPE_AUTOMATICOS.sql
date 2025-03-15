/*  
    =================================================================================
    Nome da Procedure: PROC_UPDATES_EQUIPE_AUTOMATICOS
    Descrição: Insere automaticamente uma quantidade definida de membros fictícios na equipe de projetos.
    Autor: João Pedro Mendes Fonseca
    Data de Criação: 2025-02-11
    Última Modificação: 2025-02-11
    ---------------------------------------------------------------------------------
    Parâmetros:
        - `quantidade` (INT) - Número de membros a serem inseridos na equipe.
    ---------------------------------------------------------------------------------
    Retorno:
        - Não retorna valores diretamente, apenas insere registros na tabela "Equipe_Projeto".
    ---------------------------------------------------------------------------------
    Regras de Negócio:
        - Cada membro recebe um nome aleatório no formato "Membro X", onde X é uma letra de A a Z.
        - O cargo do membro é aleatoriamente escolhido entre "Desenvolvedor" e "Gerente".
        - O e-mail do membro segue o padrão "membroXX@empresa.com", onde XX é um número aleatório entre 0 e 99.
        - O telefone gerado segue o formato fictício "(11) 9XXXXXXXX".
    =================================================================================
*/

DELIMITER $$
CREATE PROCEDURE PROC_UPDATES_EQUIPE_AUTOMATICOS (IN quantidade INT)
BEGIN
	DECLARE contador INT DEFAULT 0;
    DECLARE nome_aleatorio CHAR(1);
    DECLARE cargo_aleatorio VARCHAR(50);
    
	WHILE contador < quantidade DO
		SET nome_aleatorio = CHAR (65 + FLOOR(RAND() * 26));
        
        SET cargo_aleatorio = CASE
			WHEN RAND() > 0.5 THEN 'Desenvolvedor'
            ELSE 'Gerente'
		END;
        
        INSERT INTO Equipe_Projeto(nome_membro, cargo_membro, email_membro, telefone_membro) VALUES(
			CONCAT('Membro ', nome_aleatorio), -- Nome aleatório (Membro A-Z)
            cargo_aleatorio, -- Cargo aleatório
            CONCAT('membro', FLOOR(RAND() * 100), '@empresa.com'), -- Email aleatório
            CONCAT('(11) 9', LPAD(FLOOR(RAND() * 100000000), 8, '0')) -- Telefone aleatório
        
        );
        
        SET contador = contador + 1;
	END WHILE;
END $$

DELIMITER ;


