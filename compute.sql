use empleados
/*
compute
*/

select * from usuarios;

select nombre,edad from usuarios where sexo='F';

select nombre,edad from usuarios where sexo='F'
compute min(nombre),sum(edad);