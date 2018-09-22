/*
*/


select * from libros

select precio_venta from libros
/*sacar las ganacias de cada libro*/
select precio_venta precio_compra from libros where id_libro=1

/*presupuesto*/
select nombre ,precio_venta * 10 from libros where nombre='programacion en java'
/*actualizacion*/
update libros set precio_venta=precio_venta *(precio_venta*0.1)where id_libro=1
