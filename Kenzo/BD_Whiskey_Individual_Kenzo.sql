create database bd_whiskey;

use bd_whiskey;

create table empresa (
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(50) not null,
cnpj char(17) not null,
porteEmpresa varchar(15) not null,
	constraint checkporte
    check (porteEmpresa in('pequeno', 'médio', 'grande')),
emailContato varchar(50) not null,
dtInicioContrato date not null,
dtFimContrato date
);

create table usuario (
idUsuario int primary key auto_increment,
idEmpresa int not null,
nomeUsuario varchar(50) not null,
emailUsuario varchar(50) not null unique,
senhaUsuario varchar(100) not null,
nivelAcesso int not null,
	constraint checkacess
    check (nivelAcesso in (1, 2, 3, 4))
);

create table sensTempUmid (
idSensor int primary key auto_increment,
codSensor char(5) not null,
tempValor decimal(5,2) not null,
umidValor decimal(5,2) not null,
dtColeta date default (current_time),
hrColeta date default (current_time)
);
