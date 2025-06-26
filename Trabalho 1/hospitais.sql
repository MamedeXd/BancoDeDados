create database if not exists db_hospitais;
use db_hospitais;

create table if not exists hospitais(
	nome_hosp varchar(100),
    bairro varchar(50),
    rua varchar(100),
    numero int,
    telefone varchar(11),
    tipo_hosp varchar (100),
    num_medicos int,
    lota_max int
);