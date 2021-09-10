create database Db_Felipe09
use Db_Felipe09

CREATE TABLE veiculo (
    id int PRIMARY KEY,
    marca varchar(30),
    chassi varchar(30),
    modelo varchar(30),
    valor numeric(12,2),
    data date
);

CREATE TABLE vendas (
    id int PRIMARY KEY,
    data date,
    valor numeric(12,2)
);

CREATE TABLE proprietario (
    id int PRIMARY KEY,
    nome varchar(40),
    endereco varchar(40),
    bairro varchar(30),
    rg varchar(10),
    habilitacao varchar(3)
);

--drop table proprietario para excluir registros
--drop table vendas
--drop table veiculo 

CREATE TABLE veiculo (
    id int PRIMARY KEY,
    marca varchar(30),
    chassi varchar(30),
    modelo varchar(30),
    valor numeric(12,2),
    data date
);

CREATE TABLE proprietario (
    id int PRIMARY KEY,
    nome varchar(40),
    endereco varchar(40),
    bairro varchar(30),
    rg varchar(10),
    habilitacao varchar(3)
);

CREATE TABLE vendas (
    fk_veiculo_id int,
    fk_proprietario_id int,
    id int PRIMARY KEY,
    data date,
    valor numeric (12,2)
);

select * from veiculo
select * from proprietario
select * from vendas

insert into veiculo values (1, 'chevrolet', '9B526D566S', 'tracker', 80000, '20210109')
insert into veiculo values (2, 'Audi', '9DG8G526G5', 'Q5', 200000, '20200912')
insert into veiculo values (3, 'Jeep', '6GDG453H56', 'Renegade', 90000, '20201201')

insert into proprietario values (10, 'Felipe Tsubota Placidio', 'Rua Agostinho Ribeiro', 'Pinheirinho', '58265132-1', 'B')
insert into proprietario values (20, 'Elias da Fonseca Junior', 'José Zaleski', 'Capão Raso', '68425012-3', 'B')
insert into proprietario values (30, 'Daiane Moura', 'Avenida Atlantica', 'Barra', '23561425-4', 'B')

insert into vendas values (1, 30, 55, '20210901', 83000)
insert into vendas values (2, 10, 56, '20210422', 195000)
insert into vendas values (3, 20, 57, '20210815', 92000)

