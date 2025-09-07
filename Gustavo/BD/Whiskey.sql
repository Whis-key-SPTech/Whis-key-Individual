
CREATE DATABASE whiskey;

USE whiskey;


CREATE TABLE temperatura
(
id_temp INT PRIMARY KEY,
temp DECIMAL (4,2),
dtColeta DATE DEFAULT (CURRENT_DATE),
horaColetada TIME DEFAULT (CURRENT_TIME),
temp_max DECIMAL (4,2),
temp_min DECIMAL (4,2)
);
DESC temperatura;

CREATE TABLE umidade
(
id_umidade INT PRIMARY KEY,
umidade DECIMAL (4,2),
dtColeta DATE DEFAULT (CURRENT_DATE),
horaColetada TIME DEFAULT (CURRENT_TIME),
umi_max DECIMAL (4,2),
umi_min DECIMAL (4,2)
);

CREATE TABLE usuario
(
id_usuario INT PRIMARY KEY auto_increment,
nome VARCHAR(70) NOT NULL,
id_empresa INT NOT NULL,
email VARCHAR (50) NOT NULL,
senha VARCHAR (8)
);

CREATE TABLE empresa 
(
id_empresa INT PRIMARY KEY,
cnpj VARCHAR(18),
dtCadastro DATE,
localidade VARCHAR(20)
);

CREATE TABLE sensor
(
id_sensor INT PRIMARY KEY AUTO_INCREMENT,
codigo VARCHAR(10),
localidade VARCHAR(20)
);