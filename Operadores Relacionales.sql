create table usarios2
(
id_usuarios int primary key,
nombre varchar(50) not null,
edad int not null

)
---para insertar datos en la tabla
insert into usarios2 values(1,'migelm',21);
insert into usarios2 values(2,'alma',23);
insert into usarios2 values(3,'abram',21);
insert into usarios2 values(7,'david',54);
insert into usarios2 values(8,'david',64);
insert into usarios2 values(9,'pepa',64);

select * from usarios2
----where------
select * from usarios2
where nombre='david';

/*-----operadores relacionales-----------
= igual
< menor que
> mayor que
<= menor igual
>=mayor igual que
<> diferente a
*/

select nombre,edad from usarios2
where nombre ='david'
---------------------
select nombre from usarios2
where nombre <'david'
-------------------------
select nombre from usarios2
where edad >20
------------------------
select nombre from usarios2
where edad >=20

---------------------------
select nombre from usarios2
where edad <=20

select nombre from usarios2
where nombre <> 'david'
------
select nombre from usarios2
where nombre <'david'