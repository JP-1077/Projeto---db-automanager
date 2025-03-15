/*  
    =================================================================================
    Nome da Procedure: PROC_UPDATE_CLIENTES_AUTOMATICO
    Descrição: Insere automaticamente uma quantidade definida de clientes fictícios na tabela "clientes".
    Autor: João Pedro Mendes Fonseca
    Data de Criação: 2025-02-11
    Última Modificação: 2025-02-11
    ---------------------------------------------------------------------------------
    Parâmetros:
        - `quantidade` (INT) - Número de registros de clientes a serem inseridos.
    ---------------------------------------------------------------------------------
    Retorno:
        - Não retorna valores diretamente, apenas insere registros na tabela "clientes".
    ---------------------------------------------------------------------------------
    Regras de Negócio:
        - Cada cliente recebe um nome aleatório no formato "EmpresaX", onde X é uma letra de A a Z.
        - O CNPJ é gerado aleatoriamente como um número de 14 dígitos.
        - O e-mail segue o padrão "contatoXX@empresa.com", onde XX é um número aleatório de 0 a 99.
        - O telefone gerado segue o formato fictício "(11) 9XXXXXXXX".
    ---------------------------------------------------------------------------------
    =================================================================================
*/

DELIMITER $$
CREATE PROCEDURE PROC_UPDATE_CLIENTES_AUTOMATICO(IN quantidade INT)
BEGIN
	DECLARE contador INT DEFAULT 0;
    DECLARE nome_aleatorio CHAR(1);
    
    WHILE contador < quantidade DO
		
        SET nome_aleatorio = CHAR(65 + FLOOR(RAND() * 26));
		INSERT INTO clientes (nome_cliente, cnpj_cliente, email_cliente, telefone_cliente) VALUES (
			CONCAT('Empresa', nome_aleatorio),
            LPAD (FLOOR(RAND() * 100000000000000), 14, '0'),
            concat('contato', FLOOR(RAND() * 100), '@empresa.com'),
            CONCAT('(11) 9', LPAD(FLOOR(RAND() * 100000000), 8, '0'))
        );
        SET contador = contador + 1;
	END WHILE;
END $$

DELIMITER ;
