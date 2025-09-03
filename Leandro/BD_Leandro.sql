-- banco de dados Leandro Almeida - 1ADSA

CREATE DATABASE whiskey;

USE whiskey;

-- Tabela contendo as informações de cadastro das empresas contratantes.
CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
NomeEmpresa VARCHAR (50) NOT NULL,
cnpj CHAR (14) NOT NULL,
telefone VARCHAR (15),
qtdFiliais VARCHAR (999),
dtInicioContrato DATE NOT NULL,
dtFimContrato DATE,
plano VARCHAR (20)
);
	
-- Tabela contendo as configurações e limitadores de temperatura para cada tipo de whisky (o mesmo padrão sera usado na tabela de umidade).
CREATE TABLE monitor_temp(
idTtemp INT PRIMARY KEY AUTO_INCREMENT,
idSensor INT NOT NULL,
localizacao VARCHAR(100),
dtColeta DATE DEFAULT (CURRENT_DATE),
hrColeta TIME DEFAULT (CURRENT_TIME),
temperatura DECIMAL (4,2) NOT NULL,
tempMax DECIMAL (4,2),
tempMin DECIMAL (4,2)
);

-- Tabela contendo as informações de cadastro dos usuários de cada empresa.
CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
empresa INT NOT NULL,
nomeUsuario VARCHAR (50) NOT NULL,
cpf CHAR (11) NOT NULL,
permissoes VARCHAR (10)
CONSTRAINT chkPermissoes
CHECK (permissoes IN ('parcial', 'total')),
email VARCHAR (100) NOT NULL UNIQUE,
senha VARCHAR (100) NOT NULL,
telefone VARCHAR (15),
dataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
situacao VARCHAR (10)
CONSTRAINT chkSituacao
CHECK (situacao	IN ('ativo', 'inativo'))
);

