drop table cliente;
drop table produtos;
drop table vendas;
drop table if exists funcionarios;

    create table cliente(
    id serial primary key,
    nome varchar(100)
    );

    insert into cliente(nome) values('Joao Silva'),('Fabio Evangelista');

    create table produtos(
    id serial primary key,
    nome varchar(100)
    );

insert into produtos(nome) values('Video-Game'),('SSD'),('Headset');

create table funcionarios(
    idfunc serial primary key,
    nome varchar(100),
    idade int
);

insert into funcionarios(nome, idade) values('Hugo',17),('Fabio',19),('Daniel',20);

    create table vendas(
        id serial,
        id_func int
    );

    alter table vendas 
    add constraint funcionarioQueVendeu
    foreign key (id_func) references funcionarios(idfunc);

    insert into vendas(id_func) values(2);

select * from cliente;

select * from funcionarios;

select * from produtos;

select * from vendas;

