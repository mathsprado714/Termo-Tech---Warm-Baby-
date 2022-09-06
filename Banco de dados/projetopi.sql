create database pi;
use pi;

create table medida(
idMedida int primary key auto_increment,
temperatura double,
umidade double,
dataHora datetime,
qualidade varchar(20),
constraint chkqualidade check (qualidade in ('baixa','ideal','alta')) 
);
desc medida;

drop table medida;
insert into medida values
(null,'16','57','2022-08-27 19:00:00','ideal'),
(null,'20','30','2022-08-27 19:01:00','ideal');

select*from medida;
select*from medida where umidade = '30';
select dataHora,umidade from medida;
select dataHora,temperatura from medida;
select*from medida order by temperatura;
select*from medida order by temperatura desc;

create table cliente(
codigo int primary key auto_increment,
nomeFantasia varchar(80) not null,
cnpj char(14) not null,
telefone char(13) not null,
email varchar (50) not null constraint chkemail check (email like '%@%'),
endereco varchar(80),
bairro varchar(40),
cep char(8),
estado varchar (40),
cidade varchar (40)
)auto_increment=1;

insert into cliente values
(null,'hospital são camilo','01234567891123','1234567890123','saocamilo@saocamilo','Rua Franklin do Amaral','Amaral','03451750','sao paulo','sp'),
(null,'hospital albert einstein','3564567840323','1234567789013','alberteinstein@alberteinstein','Rua consolação','Consolação','04551800','sao paulo','sp'),
(null,'hospital Nove de julho','01235307841183','1234328690123','novedejulho@novedejulho','Avenida Brasil','Bela vista','09869350','sao paulo','sp');

select * from cliente;
SELECT * FROM cliente ORDER BY bairro ASC;
SELECT * FROM cliente ORDER BY bairro desc;
select * from cliente where estado like '%a%';
select * from cliente where Cep like '%0_';
select * from cliente where bairro like 'B%';
select * from cliente where Cnpj like '%8_';
select * from cliente where estado like '_a%';

show tables;