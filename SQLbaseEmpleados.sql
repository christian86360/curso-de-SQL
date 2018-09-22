
create database veterinaria
use veterinaria

create table mascotas(nombre varchar(20) ,sexo varchar (20), raza varchar (20),edad int);

insert into mascotas values('Capitan','macho','cocker',2);
insert into mascotas values('Lucy','Hembra','labrador',5);
insert into mascotas values('Dogui','macho','sharpei',1);
insert into mascotas values('tedy','macho','cocker',3);
insert into mascotas values('dana','hembra','french',11);

select * from mascotas


/*
1)total de perros en la veterinaria
2)No.de hembras y No. de machos
3)Todos los perros ordenados por raza
4)todas las razas distintas que hay en la veterinaria
5)edad promedio de los perros
*/

select count(*)as total from mascotas;
select sexo,count(*)as mascotas from mascotas group by sexo;
select * from mascotas order by raza;
select * from mascotas where raza like '%ch';
select * from mascotas where raza like 'c%';
select avg(edad) from mascotas;