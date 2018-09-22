/*hola a todos*/
---para sub cadenas
select substring ('Hola a todos',8,5);
--para convertir un numero en cadena
select str(123);

/*tutoriales marroquin*/

select stuff('tutoriales marroquin',12,9,'Mexico');

---tamaño de una cadena
select len('tutoriales marroquin');
--el valor en codigo asquin
select char(67);
---para comvertir en mayusculas
select lower('TUTORIALES');
---para comvertir en minusculas
select upper('tutoriales');
---eliminar espacios
select ltrim('        Tutoriales       ');

---agregar espacio
select rtrim('Tutoriales       ');
---para remplazar 
select REPLACE('hola mexico','mexico','colombia');

---invertir un string

select reverse('anita lava la tina');

---para encontrar la cadena buscada o considencia
select PATINDEX('%mexico%','hola mexico');

---multiplicacion la cadena

select REPLICATE('Hola',13);

--para poner espacios
select 'tutoriales'+SPACE(3)+'christian';