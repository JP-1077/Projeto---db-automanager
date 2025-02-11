/*  
    =================================================================================
    Nome do Evento: EV_ATUALIZACAO_DIARIAS_TABELAS
    Descrição: Evento agendado para executar automaticamente a atualização diária de tabelas.
    Autor: João Pedro Mendes Fonseca
    Data de Criação: 2025-02-11
    Última Modificação: 2025-02-11
    ---------------------------------------------------------------------------------
    Agendamento:
        - Executa **uma vez por dia** (`EVERY 1 DAY`).
        - Inicia o job as 05 horas da manhã
    ---------------------------------------------------------------------------------
    Procedimentos Chamados:
        - `PROC_UPDATE_CLIENTES_AUTOMATICO(5)`: Insere 5 novos clientes fictícios.
        - `PROC_GERAR_PROJETOS_ALEATORIOS(5)`: Insere 5 novos projetos aleatórios.
        - `PROC_UPDATES_EQUIPE_AUTOMATICOS(5)`: Insere 5 novos membros na equipe.
        - `PROC_UPDATE_ALOCACACAO_AUTOMATICA(5)`: Insere 5 novas alocações de membros em projetos.
    ---------------------------------------------------------------------------------
    Observações:
        - O evento precisa estar habilitado no banco de dados (`SHOW VARIABLES LIKE 'event_scheduler'`).
        - Para garantir execução correta, as procedures devem existir e estar corretamente definidas.
    =================================================================================
*/
DELIMITER $$

CREATE EVENT EV_ATUALIZACAO_DIARIAS_TABELAS
ON SCHEDULE EVERY 1 DAY
STARTS TIMESTAMP(CURRENT_DATE + INTERVAL 1 DAY, '05:00:00')
DO 
BEGIN
    CALL PROC_UPDATE_CLIENTES_AUTOMATICO(5);
    CALL PROC_GERAR_PROJETOS_ALEATORIOS(5);
    CALL PROC_UPDATES_EQUIPE_AUTOMATICOS(5);
    CALL PROC_UPDATE_ALOCACACAO_AUTOMATICA(5);
END $$

DELIMITER ;

SHOW EVENTS;


