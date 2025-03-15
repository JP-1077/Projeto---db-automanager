/* 
	=================================================================================
    Nome do Script: Criação_Tabelas.sql
    Objetivo do código: Script responsável pela criação do banco de dados TecSolutions e das suas tabelas
    Autor: João Pedro Mendes Fonseca 
    ---------------------------------------------------------------------------------
    Tabelas Criadas:
		- clientes
        - Equipe_Projeto
        - Equipe_Projeto
        - Alocacao_Membros_Projetos
	---------------------------------------------------------------------------------
    Observações:
		- As tabelas foram criadas na ordem correta para garantir integridade referencial
	=================================================================================
*/
--------------------------------------------------------------------------------------
-- Criação do banco de dados.
CREATE DATABASE tecsolutions;

-- Definição do "TecSoltuions" como o banco que vai ser utilizado para execução das queries.
USE tecsolutions;
--------------------------------------------------------------------------------------
/*
	=================================================================================
    Nome da Tabela: Clientes
    Descrição da Tabela: Armazena informações de todos os cliente da 
    empresa de consultoria.
    ---------------------------------------------------------------------------------
    Colunas:
		- id_cliente: Identificador único do cliente (Numero Inteiro e Automático)
        - nome_cliente: Nome daquele cliente/empresa (Aceita até 255 caracteres)
        - cnpj_cliente: CNPJ da empresa (Aceita até 255 caracteres)
        - email_cliente: Email corporativo da empresa (Aceita até 255 caracteres)
        - telefone_cliente: Telefone para contato (Aceita até 255 caracteres)
     ---------------------------------------------------------------------------------
    Comandos:
		- AUTO_INCREMENT: Possibita que um número seja gerado a cada novo INSERT na tabela.
        - INT: Aquela coluna aceita apenas valores do tipo Inteiro.
        - VARCHAR: Aquela coluna aceita apenas valores de uma cadeia de caracteres.
        - PRIMARY KEY: Auxilia a identificar cada registro da tabela de forma unica.
*/
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(255),
    cnpj_cliente VARCHAR(255),
    email_cliente VARCHAR(255),
    telefone_cliente VARCHAR(255)
);
--------------------------------------------------------------------------------------
/*
	=================================================================================
    Nome da Tabela: Projetos
    Descrição da Tabela: Armazena informações de todos os projetos que estão no radar.
    ---------------------------------------------------------------------------------
    Colunas:
		- id_projeto: Identificador único do projeto (Numero Inteiro e Automático).
        - nome_projeto: Nome daquele projeto (Aceita até 255 caracteres)
        - descricao_projeto: Uma Síntese daquele projeto (Não possui um limite de caracteres)
        - data_inicio_projeto: Data que aquele projeto foi iniciado (Aceita apenas DATA)
        - data_fim_projeto: Data que o projeto foi finalizado (Aceita apenas DATA)
        - status_projeto: Retorno em que fase aquele projeto está (Aceita até 255 caracteres)
     ---------------------------------------------------------------------------------
    Comandos:
		- AUTO INCREMENT: Possibita que um número seja gerado a cada novo INSERT na tabela.
        - INT: Aquela coluna aceita apenas valores do tipo Inteiro.
        - VARCHAR: Aquela coluna aceita apenas valores de uma cadeia de caracteres.
        - TEXT: Ele aceita caracteres, mas não possui um limite especifico.
        - DATE Aceita valores apenas do tipo DATA.
		- FOREIGN KEY: Campo que se conecta com outra tabela por meio da 
        chave primária.
*/
CREATE TABLE Projetos (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    nome_projeto VARCHAR(255),
    descricao_projeto TEXT,
    data_inicio_projeto DATE,
    data_fim_projeto DATE,
    status_projeto VARCHAR(255),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
--------------------------------------------------------------------------------------
/*
	=================================================================================
    Nome da Tabela: Equipe_Projetos
    Descrição da Tabela: Armazena as equipes que estão relacionadas com os projetos.
    ---------------------------------------------------------------------------------
    Colunas:
		- id_membro: Identificador único do membro (Numero Inteiro e Automático).
        - nome_membro: Nome daquele membro da equipe
        - cargo_membro: Cargo que ele ocupa dentro da empresa
        - email_membro: Email corporativo do colaborador
        - telefone_membro: Telefone corporativo do colaborador
     ---------------------------------------------------------------------------------
    Comandos:
		- AUTO INCREMENT: Possibita que um número seja gerado a cada novo INSERT na tabela.
        - INT: Aquela coluna aceita apenas valores do tipo Inteiro.
        - VARCHAR: Aquela coluna aceita apenas valores de uma cadeia de caracteres.
*/
CREATE TABLE Equipe_Projeto (
    id_membro INT AUTO_INCREMENT PRIMARY KEY,
    nome_membro VARCHAR(255),
    cargo_membro VARCHAR(255),
    email_membro VARCHAR(255),
    telefone_membro VARCHAR(255)
);
--------------------------------------------------------------------------------------
/*
	=================================================================================
    Nome da Tabela: Alocacao_Membros_Projetos
    Descrição da Tabela: Armazena o periodos que as equipes ficaram para desenvolvimento.
    ---------------------------------------------------------------------------------
    Colunas:
		- id_alocacao: Identificador único da alocacao (Numero Inteiro e Automático).
        - id_membro: Identificador único do membro (Numero Inteiro e Automático).
        - id_projeto: Identificador único do projeto (Numero Inteiro e Automático).
        - data_inicio_alocacao: Data que iniciou para alocação
        - data_fim_alocacao: Data que encerrou a alocação 
     ---------------------------------------------------------------------------------
    Comandos:
		- AUTO INCREMENT: Possibita que um número seja gerado a cada novo INSERT na tabela.
        - INT: Aquela coluna aceita apenas valores do tipo Inteiro.
        - TEXT: Ele aceita caracteres, mas não possui um limite especifico.
        - DATE Aceita valores apenas do tipo DATA.
		- FOREIGN KEY: Campo que se conecta com outra tabela por meio da 
        chave primária.
*/
CREATE TABLE Alocacao_Membros_Projetos (
    id_alocacao INT AUTO_INCREMENT PRIMARY KEY,
    id_membro INT,
    id_projeto INT,
    data_inicio_alocacao DATE,
    data_fim_alocacao DATE,
    FOREIGN KEY (id_membro) REFERENCES Equipe_Projeto(id_membro),
    FOREIGN KEY (id_projeto) REFERENCES Projetos(id_projeto)
);



