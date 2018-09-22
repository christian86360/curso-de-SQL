
CREATE DATABASE tienda

 use tienda



CREATE TABLE fabricantes(
	Clave_fabricantes int NOT NULL AUTO_INCREMENT,
	Nombre varchar (30) NOT NULL,
	PRIMARY KEY (Clave_fabricantes)

);

INSERT INTO fabricantes ( Nombre) VALUES ( 'Kingston'),
('Adata'),
('Logitech'),
('Lexar'),
('Seagate');

select * from fabricantes;




CREATE TABLE articulos(
	Clave_articulo int  NOT NULL AUTO_INCREMENT,
	Nombre varchar(30) NOT NULL,
	Presio int NOT NULL,
	Clave_fabricantes int NOT NULL,
PRIMARY KEY (Clave_articulo),

CONSTRAINT fk_fabicanteS FOREIGN KEY (	Clave_fabricantes) REFERENCES fabricantes (	Clave_fabricantes)

);

  

INSERT INTO articulos  ( Nombre,Presio,Clave_fabricantes) VALUES ('Teclado', 100, 3),
 ( 'Disco duro 300 Gb', 500, 5),
 ( 'Mouse', 80, 3),
 ( 'Memoria usb', 140, 4),
 ( 'Memoria Ram', 290, 1),
 ( 'Dico duro extraible 250 Gb', 650, 5),
 ( 'Memoria USB', 279, 1),
 ( 'DVD Rom', 450, 2),
 ( 'CD Rom', 200, 2),
 ( 'Tarjeta de red', 180, 3);

  /*Obtener todos los datos de los productos de la tienda*/
  
    select * from articulos;
 /*obtener los nombres de los productos de la tienda*/
 select Nombre  from  articulos;
 /*Obtener los nombre y precio de los productos de la tienda*/
 select Nombre,Precio from articulos;
 /*Obtener los nombre de los articulos sin repeticion*/
   select distinct nombre from articulos;
 /*Obtenertodos los datos del aticulo cuya clave de producto es 5*/
  select * from articulos where Clave_articulo=5;
 /*Obtener todos los datos del articulo cuyo nombre del producto es "teclado"*/
 select * from articulos where Nombre='teclado';
 /*Obtenertodos los datos  de la MEmoria Ram y memoria Usb*7*/
 select * from articulos where nombre='memoria ram' or nombre='memoria usb';
 /*Obtener todos los datos de los articulos que empiezan con M*/
  select * from articulos where nombre like 'M%';
 /*Obtener el nombre de los productos donde el precio sea mayor a 100*/
 select nombre from articulos where precio=100;
 /*Obtener rl nombre de los productos donde el precio sea mayor a 200*/
 select nombre from articulos where precio > 200;
 /*Obtener todos los datos de los articulos cuyo precio este entre 100 y 350*/
    select * from articulos where precio >=100 and precio<=350;
 /*Obtener el precio medio de todos los articulos*/
 select avg(precio)from articulos;
 /*Obtener el precio medio de los articulos cuyo codigo de fabricante sea 2*/
 select avg(precio)from articulos where clave_fabricantes=3;
 /*Obtener el nombre y precio de los articulos ordenar por Nombre*/
  select nombre,precio from articulos order by nombre;
 /*Obtener todos los datos de los productos ordenados desendientemente por precio*/
 select * from articulos order by precio desc;
 /*Obtener el nombre y presio de los articulos cuyo precio sea mayor a 250 y ordenarlos desendientemente por precio y luego asecendentemente por nombre*/
 select nombre,precio from articulos where presio >= 250 order by precio desc,nombre;
 /*Obtener una lista completa de los productos, incluyendo por cada articulo los datos del articulo y del fabricante*/
  select * from articulos ,fabricantes where articulos.Clave_fabricantes=fabricantes.Clave_fabricantes;
 /*Obtener la clave de producto, nombre del producto y nombre del fabricante de todos los productos en venta*/
 select articulos.clave_articulo,articulos.nombre,fabricantes.nombre from articulos,fabricantes 
 where articulos.clave_fabricantes=fabricantes.Clave_fabricantes;
 /*Obtener el nombre y precio de los articulos donde el fabricante sea logitech ordernarlos alfabeticamente por nombre del producto*/
 select articulos.nombre,articulos.precio from articulos,fabricantes where fabricantes.nombre='logitech' and
 articulos.clave_fabricantes=fabricantes.Clave_fabricantes order by articulos.nombre;
 /*Obtener el nombre precio y nombre de fabricante de los productos que son marca lexar o kingston ordenados desendentemente por precio*/
 select articulos.nombre,articulos.Precio,fabricantes.nombre
 from articulos,fabricantes
 where fabricantes.Nombre='lexar' or fabricantes.Nombre='kingston'
 and articulos.Clave_fabricantes=fabricantes.Clave_fabricantes
 order by articulos.Precio desc;
 /*Añade un nuevo producto:Clave del producto 11, Altavoses de 120 del fabricante 2*/
 insert into articulos values(11,'Altavoces',120,2);
 /*Cambiar el nombre del producto 6 a Impresora Laser*/
 update articulos set nombre='Impresora a laser'
   where Clave_articulo=8;
 /*Aplicar un descuento de 10% a todos los productos*/
 update articulos set precio=precio * 0.10;
 /*Aplicar un descuento de 10% a todos los productos cuyo precio sea mayor o igual 300*/
  update articulos set precio=precio -10 where precio > 300;
 /*borra el producto numero 6*/
  delete from articulos where Clave_articulo=6;