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

insert into hospitais(nome_hosp, bairro, rua, numero, telefone, tipo_hosp, num_medicos, lota_max)
values ("Felicio Rocho", "Barro Preto", "Av. do Contorno", 9530, "3135147000", "Cardiológico", 670, 1500);

insert into hospitais(nome_hosp, bairro, rua, numero, telefone, tipo_hosp, num_medicos, lota_max)
values ("Mater Dei", "Prado", "Av. do Contorno", 9000, "3133399000", "Ortopédico", 20000, 3000);

insert into hospitais(nome_hosp, bairro, rua, numero, telefone, tipo_hosp, num_medicos, lota_max)
values ("Unimed", "Cidade Industrial", "Av. Babita Camargos", 1695, "3140204020", "Pediatra", 500, 963);

insert into hospitais(nome_hosp, bairro, rua, numero, telefone, tipo_hosp, num_medicos, lota_max)
values ("Hospital da Baleia", "Saudade", "Rua Juramento", 1464, "3136150220", "Oncológico", 1433, 3000);

insert into hospitais(nome_hosp, bairro, rua, numero, telefone, tipo_hosp, num_medicos, lota_max)
values ("Raul Soares", "Santa Efigênia", "Av. do Contorno", 3017, "3130110017", "Psiquiátrico", 300, 1000);

select * from hospitais;