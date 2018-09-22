use empleados
/*
distinct-->distinto-->eliminara repeticiones de la consulta
*/

select * from usuarios

select distinct nombre from usuarios order by nombre;

select distinct edad from usuarios order by edad;

select sum(distinct edad) from usuarios;
