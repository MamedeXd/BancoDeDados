#Sistema de cadastro de alunos em turmas.
create database if not exists db_escola;
use db_escola;

create table if not exists turma(
	id_turma int primary key auto_increment, #definição da chave primária
    nome_turma varchar(50) not null, #campo não pode ser nulo
    turno char not null, # recebe apenas uma letra e não pode ser nulo
    curso varchar(100), # pode ser nulo
    turma_ativa bool default true # campo do tipo booleano por padrão verdadeiro
);