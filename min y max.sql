
select * from usuarios;
/*
//numeros
count --- contar
sum ----sumar
avg ----promedio
//cadenas y numeros
min ---minimo
max ---- maximo
*/
---para la edad minima
select min(edad) from usuarios
---para la maxima
select max(edad) from usuarios

select min(edad) from usuarios where sexo='M';

select min(edad) from usuarios where sexo='F';
select max(edad) from usuarios where sexo='F';
select max(edad) from usuarios where sexo='M';
--obtiene el nombre mas bajo
select min(nombre) from usuarios 
--obtiene el ultimo nombre
select max(nombre) from usuarios
--para ordenar los nombre
select nombre from usuarios order by nombre 
