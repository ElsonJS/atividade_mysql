create database bdAula;
use bdAula;

create table t_cliente(
id int not null auto_increment,
matricula int not null,
nome varchar(50) not null,
cpf int not null,
data_nasc date not null,
endereco varchar(60) not null,
primary key(id)
);

create table t_produto(
id_produto int not null auto_increment,
nome varchar(50) not null,
descricao varchar(100) not null,
preco float not null,
primary key(id_produto)
);

create table t_estoque(
id_estoque int not null auto_increment,
recebido boolean not null,
status_pedido varchar(30) not null,
primary key(id_estoque)
);

alter table t_produto add column id int not null after id_produto;
alter table t_estoque add column id_produto int not null after id_estoque;

desc t_produto;
desc t_estoque;

insert into t_cliente values
(default, 100, 'Cebolinha Cruz', 789456123, '1990-05-30', 'rua estelita, 50'),
(default, 101, 'Monica da Fé', 123456963, '1988-02-29', 'rua alfredo miguel, 1001'),
(default, 102, 'Pedro Abreu', 741234561, '1981-04-01', 'rua nogueira, 500'),
(default, 103, 'Maria Guerra', 753159456, '1979-07-19', 'rua barra funda, 962');

select * from t_cliente;

insert into t_produto values
(default, 1, 'Pão Carioquinha', 'Pães feitos do dia!', 11.90),
(default, 2, 'Pão de Coco', 'Venha adoçar seu dia!', 9.99),
(default, 3, 'Presunto', 'Presunto de varios sabores e preferencias.', 19.99),
(default, 4, 'Queijo', 'O melhor queijo da região', 35.89);

select * from t_produto;

insert into t_estoque values
(default, 1, true, 'Em preparação'),
(default, 2, true, 'Saiu para entrega'),
(default, 3, true, 'Em preparação'),
(default, 4, true, 'Saiu para entrega');

select * from t_estoque;

create view V_cliente as select matricula, nome, endereco from t_cliente;
select * from V_cliente;




