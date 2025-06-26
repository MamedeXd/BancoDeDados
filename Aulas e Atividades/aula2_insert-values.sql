use db_doador;

#Comando para inserir dados
insert into doador(nome_doador, idade, telefone, email, tipo_sang, cidade)
values ("Mary Jane", 23, "31912345678", "mj@gmail.com", "O+", "Ibirité");

#Consultar os dados
select * from doador;