/*  
    =================================================================================
    Nome da Procedure: PROC_ALOCACAO_EQUIPE_PROJETOS
    Objetivo da procedure: Inserir dados na tabela alocacao equipe.
    Autor: João Pedro Mendes Fonseca
    ---------------------------------------------------------------------------------
    Parâmetros de Entrada:
        - @p_id_membro(INT) - Identificador unico do membro 
        - @p_id_projeto(INT) - Identificador unico do projeto 
        - @p_data_inicio(DATE) - Data que iniciou a alocacao
        - @p_data_fim(DATE) - Data que vai finalizar a alocacao.
    ---------------------------------------------------------------------------------
    Regras de Negócio:
        - A proc faz uma ação de inserção de dados na base de dados de Alocacao equipe, com o
        intuito de popular a base com dados fixos.
    ---------------------------------------------------------------------------------
    =================================================================================
*/
-- Define o delimitador para evitar conflitos com o parametros dentro da procedure

DELIMITER $$

CREATE PROCEDURE PROC_ALOCACAO_EQUIPE_PROJETO(
    IN p_id_membro INT,
    IN p_id_projeto INT,
    IN p_data_inicio DATE,
    IN p_data_fim DATE
)
BEGIN
    INSERT INTO Alocacao_Membros_Projetos (id_membro, id_projeto, data_inicio_alocacao, data_fim_alocacao)
    VALUES (p_id_membro, p_id_projeto, p_data_inicio, p_data_fim);
END $$

DELIMITER ;
