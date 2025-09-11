CREATE DATABASE BD_Whiskey;
USE BD_Whiskey;


CREATE TABLE cadastro (
id_Cadastro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
cpf CHAR(14) NOT NULL UNIQUE,
email VARCHAR(60) NOT NULL UNIQUE,
senha VARCHAR(20) NOT NULL,
dtNasc DATE NOT NULL
);

CREATE TABLE monitoramentoUmid (
id_umidade INT PRIMARY KEY AUTO_INCREMENT,
umidadeTemp DATE DEFAULT (CURRENT_DATE),
umidadeHr	TIME DEFAULT (CURRENT_TIME),
umidadeAtual INT,
umidadeMin INT,
umidadeMax INT
);

CREATE TABLE monitoramentoTemp (
id_Temp INT PRIMARY KEY AUTO_INCREMENT,
tempData DATE DEFAULT (CURRENT_DATE),
tempHr TIME DEFAULT(CURRENT_TIME),
tempAtual DECIMAL (4,2),
tempMin DECIMAL (4,2),
tempMax DECIMAL(4,2)
);

CREATE TABLE sensores(
id_Sensor INT PRIMARY KEY AUTO_INCREMENT,
sensor INT
);

INSERT INTO cadastro VALUES 
(default,'Rafael', '551.784.728-01','teste1@gmail.com','1234567','1999-02-03'),
(default,'Murilo', '668.786.726-02','teste2@gmail.com','1234567','1991-01-29'),
(default,'Natalia', '153.687.724-03','teste3@gmail.com','1234567','1999-06-18'),
(default,'Ingridy', '651.737.723-04','teste4@gmail.com','1234567','1998-01-13'),
(default,'Miguel', '231.647.721-05','teste5@gmail.com','1234567','1989-09-09');

INSERT INTO monitoramentoUmid VALUES 
(default,default,default, 70, 50, 70),
(default,default,default, 65, 50, 70),
(default,default,default, 55, 50, 70),
(default,default,default, 72, 50, 70),
(default,default,default, 48, 50, 70);

INSERT INTO monitoramentoTemp VALUES 
(default,default,default, 18.52, 15, 20),
(default,default,default, 22.50, 15, 20),
(default,default,default, 28.29, 15, 20),
(default,default,default, 14.61, 15, 20),
(default,default,default, 20.50, 15, 20);



select * from cadastro;
SELECT * FROM cadastro WHERE nome like '%l';
SELECT * FROM cadastro WHERE nome like 'r%';
SELECT * FROM cadastro WHERE nome like '_n%';
SELECT * FROM cadastro WHERE nome like '%i_';
SELECT  nome, cpf , email FROM cadastro  WHERE id_Cadastro = 1;
SELECT CONCAT ( 'Obrigado ','', nome,' por contratar nosso serviço') AS Cliente From cadastro;


select * from monitoramentoUmid;
SELECT CONCAT ('A sua umidade atual é: ', umidadeAtual) AS 'Coleta Atual',
CASE 
WHEN umidadeAtual>71 THEN 'Acima' 
WHEN umidadeAtual < 50 THEN 'Abaixo'
ELSE 'Normal' 
END AS 'Mensagem' FROM monitoramentoUmid ;

select * from monitoramentoTemp;
SELECT CONCAT ('A sua temperatura atual é: ', tempAtual) AS 'Coleta Atual',
CASE
 WHEN tempAtual>20 THEN 'Acima'
 WHEN tempAtual <15 THEN 'Abaixo'
 ELSE 'Normal'  
 END as 'Mensagem' from monitoramentoTemp ORDER BY tempAtual DESC;


Select * from monitoramentoUmid ORDER BY umidadeAtual DESC;







