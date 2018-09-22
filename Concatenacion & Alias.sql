select * from libros
/*concatenacion es la union de dos o mas cadenas*/

select nombre from libros

select 'libro:'+nombre+'/'+nombre from libros
select 'libro:'+nombre+'/'+nombre from libros where id_libro=1

select precio_venta as este_es_precio_de_venta,precio_compra as este_precio_de_compra from libros