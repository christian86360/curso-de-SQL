---identity
/*
por ejemplo el identity empieza de 1 y su incremento es de 1
no es permitido la introducion del campo
no permite la modificacion 
permite la repeticion
permite que un campo de la tabla  tenga esta propiedad
identity toma el valor del ultimo registro
sepuede activar la opcion insercion
*/
create table usarios4(
id_usario int identity,
edad int not null
)
insert into usuario5 values('david');
insert into usuario5 values('david');
insert into usuario5 values('david');
insert into usuario5 values('david');
insert into usuario5 values('david');
insert into usuario5 values('david');
select * from usarios4

---y en que numero empeso
select ident_seeD('usuario5')

---cuanto es el incremento
select ident_incr('usuario5')

create table usarios6(
id_usario int identity(56,2),
edad int not null
)
insert into usarios6 values(34);
insert into usarios6 values(31);
insert into usarios6 values(56);
insert into usarios6 values(67);
insert into usarios6 values(12);
insert into usarios6 values(14);

---y en que numero empeso
select ident_seeD('usarios6')

---cuanto es el incremento
select ident_incr('usarios6')
--abilitar la identity
set identity_insert usarios4 on;
---insertar identity y campo
insert into usarios4 (id_usario,edad) values(77,80);
--desabilitar la identity
set identity_insert usarios4 off;