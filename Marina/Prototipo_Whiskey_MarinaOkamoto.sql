/* Protótipo de Tabelas de Banco de Dados
Controle de temperatura e umidade no processo de maturação do uísque
Marina Yuri Okamoto */

create database whisky;

use whisky;

create table temperatura (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    nomeSensor VARCHAR (10),
    idBarril INT,
    nomeWhisky VARCHAR (30),
    dtHr DATETIME,
    temperatura DECIMAL (3,2),
    tempMax DECIMAL (3,1),
    tempMin DECIMAL (3,1),
    unidMedida VARCHAR (5),
    alerta VARCHAR (10) 
	-- ACIMA, ABAIXO, ADEQUADO
    );
    
create table umidade (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    nomeSensor VARCHAR (10),
    idBarril INT,
    nomeWhisky VARCHAR (30),
    dtHr DATETIME default current_timestamp,
    umidade INT,
    umidMax INT,
    umidMin INT,
    unidMedida VARCHAR (5),
    alerta VARCHAR (10) 
	-- ACIMA, ABAIXO, ADEQUADO
    );
    
create table padroes (
	idWhiskey INT PRIMARY KEY AUTO_INCREMENT,
    nomeWhiskey VARCHAR (30),
    tempMax DECIMAL (3,1),
    tempMIN DECIMAL (3,1),
    unidMedidaTEMP VARCHAR (5),
    umidMax INT,
    umidMin INT,
    unidMedidaUMID VARCHAR (5)
    );
    
DESC temperatura;
DESC umidade;
DESC padroes;

INSERT INTO padroes VALUES
    (default, 'bourbon', 20.0, 15.0, 'ºC', 70, 60, '%');

    
    
    