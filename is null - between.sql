select * from libros
/*
is null --> si es nulo
between
*/

          ---para cuendo el campo no es nulo
select * from libros where nombre is not null


select * from libros where precio_venta > 200 and precio_venta<300

select * from libros where precio_venta between 200 and 300;