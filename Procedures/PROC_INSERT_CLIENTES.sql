/*  
    =================================================================================
    Nome da Procedure: PROC_INSERT_CLIENTES
    Objetivo da procedure: Inserir dados na tabela clientes.
    Autor: João Pedro Mendes Fonseca
    ---------------------------------------------------------------------------------
    Parâmetros:
        - @p_nome_cliente(TIPO) - Inserir o nome do cliente com até 255 caracteres.
        - @p_cnpj_cliente (TIPO) - Inserir cnpj do cliente com até 255 caracteres.
        - @p_email_cliente (TIPO) - Inserir email do cliente com até 255 caracteres.
        - @p_telefone_cliente (TIPO) - Inserir telefone do cliente com até 255 caracteres.
    ---------------------------------------------------------------------------------
    Regras de Negócio:
        - A proc faz uma ação de inserção de dados na base de dados de clientes, com o
        intuito de popular a base com dados fixos.
    ---------------------------------------------------------------------------------
    Observações:
        - Detalhes adicionais ou alertas sobre o uso da procedure.
    =================================================================================
*/
-- Define o delimitador para evitar conflitos com o parametros dentro da procedure
DELIMITER $$

-- Cria a procedure com o seu nome e os parâmetros de entrada
CREATE PROCEDURE PROC_INSERT_CLIENTES(
	IN p_nome_cliente VARCHAR(255), -- Parâmetro para o nome do cliente
    IN p_cnpj_cliente VARCHAR(255), --  Parâmetros para o CNPJ do cliente
    IN p_email_cliente VARCHAR(255), -- Parâmetro para o email do cliente
    IN p_telefone_cliente VARCHAR(255) -- Parâmetro para o telefone do cliente
)
BEGIN
-- Insere os dados na tabela Clientes
	INSERT INTO Clientes (nome_cliente, cnpj_cliente, email_cliente, telefone_cliente)
-- Usa os parâmetros de entrada para inserir os valores na base 
    VALUES ( p_nome_cliente,  p_cnpj_cliente,  p_email_cliente, p_telefone_cliente);
END  $$

-- Restaura o delimitador padrão
DELIMITER ;
