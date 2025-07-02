create database if not exists SistemaVoluntarios;
use SistemaVoluntarios;

create table if not exists Voluntarios (
	ID INT auto_increment primary key,
    Nome varchar(100) not null,
    Email varchar(100) unique not null,
    Telefone varchar(20),
    DataNascimento date,
    TipoSanguineo char(3),
    DataCadastro timestamp default current_timestamp
    );

INSERT INTO Voluntarios (Nome, Email, Telefone, DataNascimento, TipoSanguineo) VALUES
('Ana Silva', 'ana.silva@example.com', '1111-2222', '1985-03-22', 'O+'),
('Pedro Santos', 'pedro.santos@example.com', '1111-3333', '1990-07-15', 'A-'),
('Maria Oliveira', 'maria.oliveira@example.com', '1111-4444', '1988-11-10', 'B+'),
('João Pereira', 'joao.pereira@example.com', '1111-5555', '1982-02-20', 'AB-'),
('Carla Almeida', 'carla.almeida@example.com', '1111-6666', '1995-05-25', 'O-'),
('Lucas Costa', 'lucas.costa@example.com', '1111-7777', '1993-08-12', 'A+'),
('Juliana Rodrigues', 'juliana.rodrigues@example.com', '1111-8888', '1987-01-30', 'B-'),
('Roberto Lima', 'roberto.lima@example.com', '1111-9999', '1992-06-18', 'O+'),
('Patricia Martins', 'patricia.martins@example.com', '2222-0000', '1994-12-05', 'A-'),
('Thiago Fernandes', 'thiago.fernandes@example.com', '2222-1111', '1983-09-28', 'AB+'),
('Juliana Costa', 'juliana.costa@example.com', '2222-2222', '1991-04-16', 'B+'),
('Gustavo Almeida', 'gustavo.almeida@example.com', '2222-3333', '1980-07-09', 'O-'),
('Fernanda Rocha', 'fernanda.rocha@example.com', '2222-4444', '1996-02-14', 'A+'),
('Rafael Martins', 'rafael.martins@example.com', '2222-5555', '1995-10-30', 'B-'),
('Mariana Souza', 'mariana.souza@example.com', '2222-6666', '1989-05-01', 'AB-'),
('André Santos', 'andre.santos@example.com', '3333-7777', '1986-03-12', 'O+'),
('Natália Ferreira', 'natalia.ferreira@example.com', '3333-8888', '1991-08-23', 'A-'),
('Daniela Lima', 'daniela.lima@example.com', '3333-9999', '1984-12-19', 'B+'),
('Lucas Pereira', 'lucas.pereira@example.com', '4444-0000', '1990-06-17', 'AB+'),
('Fernanda Costa', 'fernanda.costa@example.com', '4444-1111', '1992-11-03', 'O-'),
('Eduardo Martins', 'eduardo.martins@example.com', '4444-2222', '1987-07-25', 'A+'),
('Juliana Lima', 'juliana.lima@example.com', '4444-3333', '1994-03-14', 'B-'),
('Roberta Rocha', 'roberta.rocha@example.com', '4444-4444', '1988-09-09', 'AB-'),
('Marcelo Fernandes', 'marcelo.fernandes@example.com', '5555-5555', '1995-04-20', 'O+'),
('Patrícia Costa', 'patricia.costa@example.com', '5555-6666', '1991-12-30', 'A-'),
('Vinícius Silva', 'vinicius.silva@example.com', '5555-7777', '1982-06-11', 'B+'),
('Ana Paula Almeida', 'ana.paula.almeida@example.com', '5555-8888', '1989-03-14', 'AB+'),
('Júlio Rocha', 'julio.rocha@example.com', '5555-9999', '1990-05-25', 'O-'),
('Tatiane Lima', 'tatiane.lima@example.com', '6666-0000', '1993-10-05', 'A+'),
('Carlos Eduardo', 'carlos.eduardo@example.com', '6666-1111', '1986-08-22', 'B-'),
('Marcio Costa', 'marcio.costa@example.com', '6666-2222', '1994-01-10', 'AB-'),
('Viviane Santos', 'viviane.santos@example.com', '6666-3333', '1985-11-15', 'O+');

-- Busca geral de todos os valores
select nome, tiposanguineo from voluntarios;

-- Buscar todas as pessoas com tipo sanguineo O-
select * from voluntarios
where tiposanguineo = "O-";

-- Buscar pelo id
select * from voluntarios
where id = 14;

-- Buscar por letra que inicia o dado
select * from voluntarios
where nome like "A%";

-- Buscar todos os dados que possuem tal letra no dado inserido
select * from voluntarios
where nome like "%S%";

-- Buscar por letra que finaliza o dado
select * from voluntarios
where nome like "%A";

select nome, email, telefone, datanascimento
from voluntarios
where DataNascimento > '1995-01-01';