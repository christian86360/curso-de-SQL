select * from usuarios

/*
count ---cuenta
sun --- suma
avg ---
*/

select count (*) from usuarios;
select sum(22)from usuarios;

select sum(22)from usuarios where sexo='M';

select sum(22)from usuarios where sexo='M' and edad>18;

select sum(22)from usuarios where sexo='M' and edad<18;
select sum(22)from usuarios where sexo='F' and edad>18;

---sacar el promedio de la edad

select avg(edad)from usuarios where sexo='M';

select avg(edad)from usuarios where sexo='F';

select avg(edad)from usuarios where sexo='F' and edad>17;





