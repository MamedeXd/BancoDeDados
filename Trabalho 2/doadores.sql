create database if not exists doacao;
use doacao;

CREATE TABLE Cidade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL
);

CREATE TABLE Doador (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    tipo_sanguineo VARCHAR(3) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo ENUM('M', 'F', 'Outro') NOT NULL,
    id_cidade INT,
    FOREIGN KEY (id_cidade) REFERENCES Cidade(id)
);

INSERT INTO Cidade (id, nome, estado) VALUES
(1, 'São Paulo', 'SP'),
(2, 'Rio de Janeiro', 'RJ'),
(3, 'Belo Horizonte', 'MG'),
(4, 'Salvador', 'BA'),
(5, 'Curitiba', 'PR');

INSERT INTO Doador (nome, cpf, tipo_sanguineo, data_nascimento, sexo, id_cidade) VALUES
('Emilly Jesus', '046.192.835-33', 'A-', '1961-06-28', 'M', 3),
('Heitor Nunes', '640.235.817-71', 'B-', '1992-10-26', 'M', 2),
('Srta. Maria Cecília Souza', '574.986.203-83', 'A-', '1962-11-02', 'Outro', 5),
('Dr. Leandro Costa', '410.782.653-80', 'A-', '1965-12-08', 'Outro', 4),
('Heloísa Monteiro', '237.041.659-99', 'A+', '1962-12-17', 'M', 1),
('Júlia Monteiro', '215.079.634-16', 'B-', '1976-01-28', 'M', 5),
('Ana Luiza Oliveira', '275.601.948-85', 'A+', '2000-11-28', 'Outro', 2),
('Luna da Mata', '948.602.351-42', 'O+', '2000-09-26', 'M', 4),
('Bianca Castro', '918.345.027-05', 'AB+', '1962-06-26', 'M', 2),
('Igor Jesus', '370.425.168-26', 'O+', '1965-06-19', 'F', 3),
('Cauê Pires', '312.845.967-37', 'B+', '2006-07-22', 'M', 3),
('Erick Porto', '294.516.378-00', 'A-', '1961-12-14', 'M', 4),
('Vitor Gabriel Teixeira', '670.152.943-70', 'A-', '2007-03-14', 'F', 3),
('Giovanna Cardoso', '469.712.038-87', 'AB+', '1972-03-08', 'M', 4),
('Arthur Freitas', '458.710.693-39', 'A-', '1968-06-19', 'F', 1),
('Luiz Felipe Pinto', '490.357.812-79', 'AB+', '1985-09-26', 'Outro', 5),
('Dra. Bárbara da Cunha', '127.904.568-01', 'AB-', '2003-10-07', 'Outro', 2),
('Leonardo Pires', '785.643.102-44', 'A-', '1995-06-30', 'M', 2),
('Enrico Pinto', '837.269.041-31', 'AB+', '1974-01-09', 'M', 2),
('Davi Lucca Freitas', '630.759.218-40', 'A-', '1988-08-18', 'F', 3),
('Sophia Ferreira', '571.932.684-73', 'O-', '1967-07-13', 'Outro', 3),
('Antônio da Paz', '781.052.639-12', 'B+', '2007-04-11', 'F', 3),
('Pietra Aragão', '501.498.237-97', 'B-', '1961-05-18', 'Outro', 3),
('Vitória da Rosa', '273.908.541-97', 'A-', '1979-06-18', 'Outro', 2),
('Davi Lucas Ribeiro', '248.371.560-53', 'B-', '1992-03-05', 'M', 4),
('Renan Azevedo', '862.057.139-77', 'O+', '1963-05-10', 'F', 5),
('Dr. Vinicius Costa', '093.147.856-10', 'B-', '1984-04-25', 'Outro', 3),
('Gabriel da Conceição', '048.519.273-04', 'A+', '1988-10-30', 'M', 1),
('Agatha Carvalho', '937.602.541-52', 'AB-', '1997-12-14', 'F', 3),
('Larissa Moraes', '073.845.962-38', 'A-', '1981-11-07', 'M', 5),
('Sra. Júlia Lopes', '964.823.157-55', 'AB-', '1978-03-18', 'M', 4),
('Sra. Isabella Cardoso', '032.859.461-05', 'O+', '1978-02-12', 'Outro', 4),
('Yuri Oliveira', '048.735.269-65', 'B+', '1998-10-25', 'F', 2),
('Sr. Matheus Ferreira', '174.096.523-06', 'B-', '1978-09-11', 'Outro', 5),
('Maria Fernanda Pinto', '382.794.516-09', 'AB+', '1964-09-19', 'Outro', 5),
('Theo Pinto', '481.506.239-06', 'O+', '2002-02-27', 'Outro', 4),
('Marcos Vinicius Ramos', '905.361.827-95', 'AB-', '1967-06-11', 'M', 2),
('Camila Fernandes', '729.658.410-67', 'O-', '1972-03-02', 'M', 1),
('Lara Freitas', '981.354.260-89', 'A-', '2002-09-25', 'M', 2),
('Eduardo da Costa', '109.364.852-05', 'O+', '2006-09-01', 'Outro', 1),
('Vitor Hugo da Conceição', '290.364.875-10', 'O+', '1962-10-07', 'F', 5),
('Camila Melo', '567.421.830-71', 'O-', '1989-04-24', 'Outro', 3),
('Ana Beatriz Rodrigues', '496.317.285-28', 'A+', '1972-11-13', 'Outro', 1),
('Caio Rezende', '104.327.986-50', 'AB+', '1994-01-14', 'Outro', 3),
('Fernanda Rezende', '617.039.245-25', 'A-', '1962-08-03', 'F', 4),
('Isadora Melo', '814.963.570-00', 'B+', '1982-11-13', 'F', 1),
('Nicolas Pires', '268.750.941-85', 'AB+', '1999-01-26', 'Outro', 2),
('Luana Araújo', '675.149.028-30', 'A-', '1988-09-23', 'Outro', 3),
('Rodrigo Dias', '695.148.720-02', 'B-', '1963-02-14', 'M', 3),
('Danilo Peixoto', '542.798.106-30', 'B+', '2001-11-07', 'Outro', 5),
('Joana Farias', '371.625.809-12', 'A+', '1995-09-09', 'Outro', 3),
('Juan da Mata', '594.183.702-04', 'O-', '1980-06-16', 'M', 1),
('Igor das Neves', '925.084.631-24', 'AB-', '2001-03-18', 'F', 2),
('Cauã Araújo', '987.421.635-28', 'A+', '1971-09-21', 'M', 5),
('Dra. Rafaela da Costa', '045.876.319-57', 'A-', '1995-08-14', 'M', 4),
('Catarina Monteiro', '869.715.043-48', 'A-', '1972-05-09', 'Outro', 2),
('Ana Júlia Almeida', '263.948.107-03', 'B+', '2003-07-31', 'Outro', 4),
('Cecília Rodrigues', '368.109.452-70', 'B+', '1992-11-07', 'F', 5),
('Sofia Rodrigues', '792.135.486-64', 'O+', '2003-11-06', 'M', 5),
('Ana Clara Alves', '610.859.743-75', 'B-', '1974-02-20', 'Outro', 3),
('Maria Eduarda Santos', '083.654.791-84', 'O+', '1971-05-31', 'Outro', 3),
('Ana Beatriz Sales', '801.752.439-05', 'O-', '1990-11-28', 'Outro', 4),
('Sra. Emilly Caldeira', '230.168.479-22', 'A-', '2004-03-07', 'M', 2),
('Emanuel da Conceição', '250.768.391-03', 'A-', '1974-07-02', 'F', 1),
('Vitória Farias', '937.160.258-95', 'B-', '1971-12-30', 'Outro', 2),
('Sr. Yuri Rodrigues', '142.756.903-70', 'A+', '1969-03-31', 'M', 1),
('Marcos Vinicius Novaes', '586.201.974-01', 'B-', '1975-08-17', 'M', 1),
('Bárbara Costa', '489.526.013-51', 'AB-', '1979-04-10', 'M', 5),
('Srta. Alícia Carvalho', '402.817.369-87', 'B-', '1974-01-26', 'F', 4),
('Ana Luiza Santos', '831.602.574-44', 'B-', '2006-05-28', 'Outro', 2),
('Lorena Castro', '263.718.490-69', 'O-', '1987-12-26', 'M', 4),
('Thomas Barros', '416.275.893-09', 'O+', '1963-01-29', 'M', 1),
('Dr. Breno Mendes', '294.015.386-89', 'A-', '1996-02-28', 'Outro', 4),
('Davi Souza', '806.253.194-51', 'AB-', '1985-07-20', 'F', 4),
('Raquel Pinto', '604.289.157-01', 'O-', '1960-12-02', 'Outro', 1),
('Maitê Fernandes', '128.475.369-73', 'A-', '1992-08-04', 'M', 4),
('Vitor Rocha', '643.501.729-80', 'AB-', '1977-03-05', 'M', 2),
('Bernardo Costa', '438.670.951-75', 'B-', '1987-03-19', 'M', 5),
('Natália Aragão', '289.605.431-60', 'O-', '1965-01-11', 'M', 4),
('Alice Santos', '956.843.720-74', 'B+', '1980-08-29', 'F', 4),
('Ana Vitória Cavalcanti', '580.471.239-04', 'B-', '1980-10-18', 'M', 4),
('Marcos Vinicius Oliveira', '756.290.814-11', 'A-', '1971-02-18', 'M', 5),
('Davi Lucas Azevedo', '931.825.746-55', 'A+', '1961-08-09', 'M', 2),
('Julia Nunes', '362.184.507-08', 'B+', '2000-11-02', 'F', 4),
('Dra. Laura Fernandes', '487.962.135-82', 'O-', '2001-01-13', 'M', 4),
('Sophie Cavalcanti', '465.082.379-00', 'A+', '1995-01-06', 'M', 4),
('Ana Beatriz da Rosa', '509.276.183-03', 'A+', '1960-12-30', 'F', 3),
('Igor da Conceição', '021.768.943-40', 'O-', '1966-10-15', 'F', 4),
('Pietro das Neves', '028.736.149-78', 'O-', '2000-02-10', 'M', 2),
('Ana Carolina Santos', '930.278.415-05', 'AB+', '2007-01-12', 'M', 1),
('Paulo Farias', '470.519.326-16', 'A+', '1995-12-27', 'Outro', 3),
('Sra. Sarah Rezende', '430.657.128-90', 'A+', '1992-06-20', 'M', 5),
('Dr. Leandro Caldeira', '607.324.189-50', 'O-', '2006-07-30', 'Outro', 5),
('Rafaela Silva', '683.021.754-71', 'B+', '1967-03-11', 'M', 5),
('Srta. Luna das Neves', '629.384.071-22', 'A-', '1969-10-22', 'M', 1),
('Bruna Silva', '752.901.634-25', 'A-', '1979-08-22', 'Outro', 2),
('Vitor Gabriel Barbosa', '768.402.951-76', 'O+', '1971-09-11', 'M', 5),
('Benício Rocha', '473.165.098-48', 'B-', '1970-02-18', 'Outro', 5),
('Bruno Mendes', '068.473.295-56', 'A+', '1995-01-19', 'Outro', 1),
('Sr. Anthony Freitas', '917.863.204-87', 'O+', '1983-02-15', 'Outro', 5),
('Joaquim da Mota', '652.348.079-83', 'AB-', '1992-11-29', 'F', 2),
('Juan da Cunha', '218.704.569-20', 'AB-', '1972-06-02', 'M', 3),
('Nicolas da Luz', '765.312.084-90', 'O+', '1971-07-01', 'M', 3);

-- Questão 1
select * from Doador
join Cidade
on Doador.id_cidade = Cidade.id
where estado = 'MG';

-- Questão 2
select * from Doador
where sexo = 'F';

-- Questão 3
select nome, data_nascimento, tipo_sanguineo from Doador
where tipo_sanguineo = 'O+';

-- Questão 4
select nome, estado from Cidade
where estado = 'SP';

-- Questão 5
select count(Doador.nome) as total_doadores
from Doador
join Cidade
on Doador.id_cidade = Cidade.id
where Cidade.nome = 'Rio de Janeiro';

-- Questão 6
select tipo_sanguineo, count(nome) as total_doadores
from Doador
group by tipo_sanguineo;

-- Questão 7
select Doador.* from Doador
join Cidade
on Doador.id_cidade = Cidade.id
where Doador.sexo = 'F' AND Cidade.nome = 'Salvador';

-- Questão 8
select * from Doador
where data_nascimento between '1971-01-01' and '1983-01-01';

-- Questão 9
select * from Doador
where nome like '%Silva';

-- Questão 10
select Doador.nome, Cidade.nome, Cidade.estado, tipo_sanguineo from Doador
join Cidade
on Doador.id_cidade = Cidade.id
where tipo_sanguineo = 'A-';