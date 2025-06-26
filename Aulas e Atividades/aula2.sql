#Criando a base de dados
create database if not exists db_doador;
use db_doador;

create table if not exists doador(
	nome_doador varchar(50),
	idade int,
	telefone varchar(11),
	email varchar(50),
	tipo_sang varchar(3),
	cidade varchar(50)
);
