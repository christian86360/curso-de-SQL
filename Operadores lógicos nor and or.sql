/*
operadores logicos

not --> !--->negacion
and --> &&---> y
or ---> ||----> o
*/
---uso de not  
select * from libros where not id_libro =1;

---and todos las condiciones unidas por el and deben cumplirse
select * from libros where precio_venta=115 and precio_compra=95.23;
--or
select * from libros where id_libro=1 or id_libro=6; 

select * from libros where not id_libro=1 or nombre='aura';