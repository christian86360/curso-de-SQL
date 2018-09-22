

create database Datos1

use Datos1

create table cliente(
  
id_cliente int primary key,
nombre_cliente varchar(20),
estado varchar(20)
)
INSERT INTO cliente VALUES (101,'Marti','CA');
INSERT INTO cliente VALUES (107,'Hernan','WI');
INSERT INTO cliente VALUES (110,'We-sports','MI');
select * from cliente

create table orden(
id_orden int primary key,
fecha date,
id_cliente int foreign key references cliente(id_Cliente),
)

select * from cliente
drop table orden

INSERT INTO orden VALUES (2301,'03/02/27',101);
INSERT INTO orden VALUES (2302,'03/02/17',107);
INSERT INTO orden VALUES (2302,'03/03/17',102);
select * from orden

create table articulo(
num_item varchar primary key,
desc_Item varchar(20),
precio decimal(10,2)
)
INSERT INTO articulo VALUES (3786,'Red',135);
INSERT INTO articulo VALUES (4011,'Raqueta',65);
INSERT INTO articulo VALUES (9133,'Paq-3',4.75);
INSERT INTO articulo VALUES (5794,'Paq-6',5);
INSERT INTO articulo VALUES (3141,'Funda',10);

create table articulo_ordenes(
id_orden int foreign key references orden(id_orden),
num_item int foreign key references articulo (num_item),
cant int
)
select * from articulo
select * from articulo_ordenes
INSERT INTO articulo_ordenes VALUES (2301,3786,3);
INSERT INTO articulo_ordenes VALUES (2301,4011,6);
INSERT INTO articulo_ordenes VALUES (2301,913,8);
INSERT INTO articulo_ordenes VALUES (2302,5744,4);
INSERT INTO articulo_ordenes VALUES (2303,4011,2);
INSERT INTO articulo_ordenes VALUES (2303,3141,2);
------------------------------CONSULTAS--------------------------------
--1
SELECT num_item FROM ARTICULO WHERE precio = 65

--2
SELECT id_oreden,num_item FROM articulo_ordenes 

--3
SELECT * FROM articulos_ordenes WHERE id_orden =2303

--4
SELECT * FROM articulo ORDER BY precio DESC

--5
SELECT DISTINCT id_orden FROM articulos_ordenes

--6
SELECT * FROM cliente WHERE nombre_cliente='Marti'  