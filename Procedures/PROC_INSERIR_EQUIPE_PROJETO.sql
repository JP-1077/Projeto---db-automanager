/*  
    =================================================================================
    Nome da Procedure: PROC_EQUIPE_PROJETOS
    Objetivo da procedure: Inserir dados na tabela equipe_projeto.
    Autor: João Pedro Mendes Fonseca
    ---------------------------------------------------------------------------------
    Parâmetros de Entrada:
        - @p_nome_membro(VARCHAR) - Inserir o nome do membro com até 255 caracteres.
        - @p_cargo (TEXT) - Inserir cargo ocupado por aquele membro
        - @p_email (DATE) - Inserir email do corporativo do colaborador
        - @p_telefone (DATE) - Inserir telefone corporativo do colaborador.
    ---------------------------------------------------------------------------------
    Regras de Negócio:
        - A proc faz uma ação de inserção de dados na base de dados de equipe projeto, com o
        intuito de popular a base com dados fixos.
    ---------------------------------------------------------------------------------
    =================================================================================
*/
-- Define o delimitador para evitar conflitos com o parametros dentro da procedure
DELIMITER $$

-- Cria a procedure com o seu nome e os parâmetros de entrada
CREATE PROCEDURE PROC_INSERIR_MEMBRO_EQUIPE(
    IN p_nome_membro VARCHAR(255),
    IN p_cargo VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_telefone VARCHAR(255)
)
BEGIN
-- Insere os dados na tabela Clientes
    INSERT INTO Equipe_Projeto (nome_membro, cargo_membro, email_membro, telefone_membro)
-- Usa os parâmetros de entrada para inserir os valores na base 
    VALUES (p_nome_membro, p_cargo, p_email, p_telefone);
END $$

-- Restaura o delimitador padrão
DELIMITER ;
