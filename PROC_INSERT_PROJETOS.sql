/*  
    =================================================================================
    Nome da Procedure: PROC_INSERT_PROJETOS
    Objetivo da procedure: Inserir dados na tabela projetos.
    Autor: João Pedro Mendes Fonseca
    ---------------------------------------------------------------------------------
    Parâmetros de Entrada:
        - @p_nome_projeto(VARCHAR) - Inserir o nome do projeto com até 255 caracteres.
        - @p_descricao_projeto (TEXT) - Inserir descrição do projeto com até 255 caracteres.
        - @p_data_inicio (DATE) - Inserir data que startou o projeto.
        - @p_data_fim (DATE) - Inserir data que o projeto foi finalizado.
        - @p_status (VARCHAR) - Em que etapa aquele projeto está
        - @p_id_cliente (INT) - Identificador unico qual cliente pertence o projeto
    ---------------------------------------------------------------------------------
    Regras de Negócio:
        - A proc faz uma ação de inserção de dados na base de dados de projeto, com o
        intuito de popular a base com dados fixos.
    ---------------------------------------------------------------------------------
    Observações:
        - Detalhes adicionais ou alertas sobre o uso da procedure.
    =================================================================================
*/
-- Define o delimitador para evitar conflitos com o parametros dentro da procedure
DELIMITER $$

CREATE PROCEDURE PROC_INSERT_Projetos(
	IN p_nome_projeto VARCHAR(255), -- Parâmetro para o nome do projeto
    IN p_descricao_projeto TEXT, -- Parâmetro para a descricao do projeto
    IN p_data_inicio DATE, -- Parâmetro para o nome do cliente
    IN p_data_fim DATE, -- Parâmetro para o nome do cliente
	IN p_status VARCHAR (255), -- Parâmetro para o nome do cliente
    IN p_id_cliente INT
)
BEGIN
-- Insere os dados na tabela Clientes
	INSERT INTO Projetos (nome_projeto, descricao_projeto, data_inicio_projeto, data_fim_projeto, status_projeto, id_cliente)
-- Usa os parâmetros de entrada para inserir os valores na base 
    VALUES (p_nome_projeto,  p_descricao_projeto,  p_data_inicio, p_data_fim, p_status, p_id_cliente);
END  $$

-- Restaura o delimitador padrão
DELIMITER ;
