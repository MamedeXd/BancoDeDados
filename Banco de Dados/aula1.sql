create database if not exists db_hospital;
use db_hospital;

create table if not exists doador(
			nome_doador varchar(50), 
            telefone varchar(15), 
            cpf varchar(11), 
            idade int);

select * from doador;