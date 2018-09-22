create database Tienda

create table articulo(id int , nombre varchar(20),cantidad decimal(7,2) NOT NULL,precio_venta decimal(7,2) Not null);

insert into articulo values(1 ,'haceite',1,13.20);
insert into articulo values(2 ,'papas sabrita',2,20);
insert into articulo values(3 ,'paleta',4,10);
insert into articulo values(4,'cocacola',2,19);
insert into articulo values(5 ,'fanta',2,23);

select * from Empleados

select sexo, count(*) as Empleado from Empleados group by sexo
select departamento, count(*) as Empleados from Empleados group by departamento;
select distinct departamento from Empleados;
select * from Empleados order by Nombre;