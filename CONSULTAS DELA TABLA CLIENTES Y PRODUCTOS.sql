
create table PRODUCTOS
(
CODIGOARTICULO VARCHAR(50),
SECCION VARCHAR(20),
NOMBREARTICULO VARCHAR(20),
PRECIO INT,
FECHA DATE,
IMPORTADO VARCHAR(20),
PAISDEORIGEN VARCHAR(20),
FOTO varchar(20)

)

CREATE TABLE CLIENTES
(
CODIGOCLIENTE VARCHAR(50),
EMPRESA VARCHAR(50),
DIRECCION VARCHAR(50),
POBLACION VARCHAR(50),
TELEFONO VARCHAR(9),
RESPONSABLE VARCHAR (50),
HISTORIAL VARCHAR(50)
)

create table ProductosNuevos
(
CODIGOARTICULO VARCHAR(50),
SECCION VARCHAR(20),
NOMBREARTICULO VARCHAR(20),
PRECIO INT,
FECHA DATE,
IMPORTADO VARCHAR(20),
PAISDEORIGEN VARCHAR(20),
FOTO varchar(20)

)
--elimina la tabla
DROP TABLE ProductosNuevos
DROP TABLE PRODUCTOS

SELECT * FROM PRODUCTOS
SELECT * FROM CLIENTES
select * from  ProductosNuevos
--
SELECT NOMBREARTICULO,SECCION,PRECIO FROM productos WHERE SECCION='CERAMICA' OR SECCION='DEPORTES'

SELECT * FROM productos WHERE SECCION ='DEPORTES' AND PAISDEORIGEN='USA'
--MYSQL
SELECT * FROM productos WHERE SECCION ="DEPORTES" AND PAISDEORIGEN="USA"

SELECT NOMBREARTICULO,SECCION,PRECIO FROM productos WHERE SECCION="CERAMICA" OR SECCION="DEPORTES"

--consulta de marso y abril del 200
select * from productos where FECHA BETWEEN '2000-03-01' AND '2000-04-30'
select * from productos where FECHA >='2000-03-01' AND FECHA <= '2000-04-30'

--MOSTRAR PRODUCTOS QUE SON DE DEPORTES Y CERAMICA ORDENADA POR SECCION Y DESPUES POR PRECIO
SELECT * FROM PRODUCTOS WHERE SECCION='DEPORTES' OR SECCION='CERÁMICA' ORDER BY SECCION, PRECIO 
SELECT * FROM PRODUCTOS WHERE SECCION='DEPORTES' OR SECCION='CERÁMICA' ORDER BY SECCION, PAISDEORIGEN ,PRECIO
--cuanto suma los articulos de seccion 
select seccion,sum(precio) as suma_articulos from PRODUCTOS group by SECCION order by suma_articulos

select seccion,avg(precio) as media_articulos from PRODUCTOS group by SECCION having SECCION='deportes' or seccion='cofeccion' order by media_articulos





--cuantos clientes tengo en cada probincia
select poblacion,count(codigocliente) as n_clientes from CLIENTES group by POBLACION
--el precio del articulo mas caro de la seccion comfecion
select seccion , max(precio) as precio_mas_alto from PRODUCTOS where seccion='confección' group by SECCION 
--con iva del 21 % 
select nombrearticulo,seccion,precio, round (precio*1.21,2) as Precio_con_iva from productos 
---descuento de 3 euros
select nombrearticulo,seccion,precio,precio-3 as Precio_descuento from PRODUCTOS
---
select nombrearticulo,seccion,precio,fecha from productos where SECCION='deportes'
--
select nombrearticulo,seccion,precio,fecha,getdate() as dia_de_hoy  from productos where SECCION='deportes'
--cuantos dias de de diferencia tiene en la fecha
select nombrearticulo,seccion,precio,fecha,getdate() as dia_de_hoy,datediff(day,fecha,GETDATE())as diferencia  from productos where SECCION='deportes'
select nombrearticulo,seccion,precio,fecha,getdate() as dia_de_hoy,datediff(day,fecha,GETDATE())as diferencia  from productos where SECCION='deportes'

/*
--consulta de multitabla
--consulta de union externa
Union
Union all
Except
Intersect
Minus
---Union interna
Inner join
Left join
Right join
*/

--union de las tablas 
select * from PRODUCTOS where SECCION='DEPORTES' union select * from ProductosNuevos where SECCION='DEPORTES DE RIESGO'

SELECT * FROM productos where Precio<100 union select * from ProductosNuevos where seccion='alta costura'
---mostrar los productos repetidos de la tablas
select * from productos where seccion='deportes' union all select * from ProductosNuevos
------Ejercicios Curso 

--1. Realizar una consulta que muestre los campos “Empresa” y “Población” de la tabla “Clientes”.
      
--2. Realizar una consulta que muestre los artículos d la sección “Cerámica”.
--3. Realizar una consulta que muestre los productos de la sección “Deportes” cuyo precio esté entre 100 y 200 €. En la consulta solo se mostrarán los campos “Nombre de artículo” y “Precio”.
--4. Realizar una consulta que muestre los productos cuyo país no sea España.
--5. Realizar una consulta que muestre los artículos españoles de la sección “Deportes” o aquellos cuyo precio sea superior a 350 € independientemente de cual sea su sección o país de origen.
--6. Realizar una consulta que muestre los productos cuya fecha esté entre 1/05/2001 y 15/12/2001. En la consulta solo se visualizarán los campos “Nombre de artículo”, “Sección” y “Fecha”.

   --EJERCICIOS SQL
--1. Realizar una consulta que muestre aquellos productos españoles cuya fecha esté comprendida entre febrero y mayo del 2002. Ordenar los resultados por el campo “Nombre artículo” descendentemente.
    SELECT * FROM PRODUCTOS WHERE PAISDEORIGEN='ESPAÑA'AND FECHA >= '2002-02-01' AND  FECHA<='2002-05-30' ORDER BY  NOMBREARTICULO DESC

--2. Realizar una consulta que muestre los campos “Empresa”, “Dirección” y “Población” de la tabla “Clientes”. Ordenar la consulta por el campo “Población” ascendentemente y por “Dirección” descendentemente.
     
--3. Realizar una consulta que muestre todos los campos de la tabla “Clientes”. Ordenar los resultados por el campo “Población” ascendentemente

--NUEVAS TABLAS 

CREATE DATABASE GESTIONPEDIDOS
CREATE TABLE CLIENTES(
CODIGOCLIENTE VARCHAR(50) PRIMARY KEY,
EMPRESA VARCHAR(50),
DIRECCION VARCHAR(50),
POBLACION VARCHAR(50),
TELEFONO VARCHAR(55),
RESPONSABLE VARCHAR(50),
HISTORIAL VARCHAR(50)

)

CREATE TABLE PEDIDOS(
NUMERODEPEDIDO INT PRIMARY KEY,
CODIGOCLIENTE VARCHAR(50),
FECHADEPEDIDO VARCHAR(50),
FORMADEPAGO VARCHAR(50),
DESCUENTO VARCHAR(50),
ENVIADO VARCHAR(50)
FOREIGN KEY (CODIGOCLIENTE) REFERENCES CLIENTES (CODIGOCLIENTE)
)


SELECT * FROM PEDIDOS 
SELECT * FROM CLIENTES
--LOS CLIENTES QUE ISIERON PEDIDOS DE MADRIL 
SELECT CLIENTES.CODIGOCLIENTE,POBLACION,DIRECCION,NUMERODEPEDIDO,PEDIDOS.CODIGOCLIENTE,FORMADEPAGO
 FROM CLIENTES Inner join PEDIDOS ON  CLIENTES.CODIGOCLIENTE=PEDIDOS.CODIGOCLIENTE
WHERE POBLACION='MADRID'

--LOS QUE ISIERON PEDIDOS Y NO ISISERON PEDIDOS DE MADRID
SELECT CLIENTES.CODIGOCLIENTE,POBLACION,DIRECCION,NUMERODEPEDIDO,PEDIDOS.CODIGOCLIENTE,FORMADEPAGO
 FROM CLIENTES LEFT JOIN PEDIDOS ON  CLIENTES.CODIGOCLIENTE=PEDIDOS.CODIGOCLIENTE
WHERE POBLACION='MADRID'

---TODOS LOS CLIENTES DE MADRIL  QUE NO AN ECHO PEDIDOS  
SELECT CLIENTES.CODIGOCLIENTE,POBLACION,DIRECCION,NUMERODEPEDIDO,PEDIDOS.CODIGOCLIENTE,FORMADEPAGO
 FROM CLIENTES LEFT JOIN PEDIDOS ON  CLIENTES.CODIGOCLIENTE=PEDIDOS.CODIGOCLIENTE
WHERE POBLACION='MADRID' AND PEDIDOS.CODIGOCLIENTE IS NULL

--consultas escalonadas
select nombrearticulo,seccion from productos where precio>10 (select  avg(precio) from productos)


select * from productos where precio > all(select precio from productos where seccion='Cerámica')
--cuyos los productos sea mayor a cualquiera
select * from productos where precio > ANY (select precio from productos where seccion='Cerámica')
--que nos muestre 

 select * from productos where precio > ALL (select precio from productos where seccion='juguetería')

  select * from productos where precio > ANY (select precio from productos where seccion='juguetería')


 -- SELECT NOMBREARTICULO, PRECIO FROM PRODUCTOS INNER JOIN PRODUCTOSPEDIDOS ON PRODUCTOS ,CODIGOARTICULO=
  --PRODUCTOPEDIDOS 
  --LOS CLIENTES QUE AN PAGADO CON TARJETA
  SELECT EMPRESA , POBLACION FROM CLIENTES WHERE CODIGOCLIENTE NOT IN(SELECT CODIGOCLIENTE FROM
  PEDIDOS WHERE FORMADEPAGO='TARJETA')

  --consultas de accion
  /*Consultas de accion
  atualizacion
  creacion de tabla
  eliminacion
  datos anexados
  
  Comandos DML y DDl
  create 
  update
  delete
  insert into
  select into
  */
  --actualizacion
  update productos set precio=precio+10 where seccion='Deportes'

  update productos set precio=precio-10 where seccion='Deportes'

  UPDATE productos set seccion='DEPORTIVOS' WHERE SECCION='DEPORTES'

  --CONSULTA DE CREACION DE TABLA CON LOS CLIENTES DE MADRID
  SELECT * INTO CLIENTES_MADRID FROM CLIENTES WHERE POBLACION='MADRID'
  --EN MYSQL
  CREATE TABLE CLIENTES_BARCELONA SELECT * FROM CLIENTES WHERE POBLACION='BARCELONA'
  --ELIMINAR LOS CLIENTES DE MADRID
  DELETE FROM CLIENTES WHERE POBLACION='MADRID'
  --ELIMINA LOS PRODUCTOS DE LA SECCION DE DEPORTES QUE CUESTEN  50 A 100
DELETE FROM PRODUCTOS WHERE SECCION='DEPORTIVOS' AND PRECIO BETWEEN 50 AND 100

SELECT EMPRESA FROM CLIENTES INNER JOIN PEDIDOS ON CLIENTES.CODIGOCLIENTE=PEDIDOS.CODIGOCLIENTE

--PARA QUE NO TE SALGA REPETIDA
SELECT DISTINCT EMPRESA FROM CLIENTES INNER JOIN PEDIDOS ON CLIENTES.CODIGOCLIENTE=PEDIDOS.CODIGOCLIENTE

DELETE DISTINCTROW CLIENTES * PEDIDOS.CODIGOCLIENTE
FROM CLIENTE LEFT JOIN PEDIDOS ON CLIENTES.CODIGOCLIENTE=PEDIDOS.CODIGOCLIENTE
WHERE PEDIDOS.CODIGOCLIENTE IS NULL

---consultas de datos anexados
insert into clientes 
select * from CLIENTES_MADRID

--PARA ELIMINAR
DELETE FROM CLIENTES WHERE POBLACION='MADRID'

--AGREGAR LOS CLIENTES DE MADRID DEJANDO NULO LA DIRECCION
INSERT INTO CLIENTES (CODIGOCLIENTE,EMPRESA,POBLACION,TELEFONO)
SELECT CODIGOCLIENTE,EMPRESA,POBLACION,TELEFONO FROM CLIENTES_MADRID

--CONSULTAS CRUSADAS
SELECT PRECIO, SUM(PRECIO) AS TOTAL
FROM PRODUCTOS
GROUP BY NOMBREARTICULO
PIVOT SECCION

SELECT 
PRECIO=SUM(PRECIO) AS TOTAL ,
NOMBREARTICULO AS NOM
FROM PRODUCTOS

  ---creacion de tablas
  create table prueba(nombre varchar(20))
--para eliminar tabla
drop table prueba
--para eliminar la  base
drop database prueba
--para agregar una columna
ALTER TABLE prueba ADD apellido varchar(20);
--eliminar un campo de una tabla
alter table prueba drop column  apellido
--modificar un datos de un campo de la tabla
alter table prueba alter column apellido varchar(30)

alter table prueba add lugar_de_nacimiento varchar(30)
--para agregar por defecto al campo
ALTER TABLE prueba ALTER COLUMN lugar_de_nacimiento SET DEFAULT 'Sandnes';
--para eliminar el por defecto
ALTER TABLE prueba ALTER lugar_de_nacimiento DROP DEFAULT
--agregas un campo
alter table clientes_madrid add fecha_baja date;

---indices
create table ejemplo(DNI varchar(30)not null ,NOMBRE varchar(20),APELLIDO varchar(20),EDAD int ,primary key (DNI))
--para poner claves primarias alas tablas ya echas
alter table ejemplo add primary key (DNI) 
--CREACION DE INDICE PARA DEJAR NULL
CREATE INDEX MIINDICE ON EJEMPLO (APELLIDO)
--SIN DUPLICAR EL APPELLIDO CON EL MISMO APELLIDO
CREATE UNIQUE INDEX MIINDICE2 ON EJEMPLO (APELLIDO)
--NO CON EL MISMO NOMBRE Y APELLIDO
CREATE UNIQUE INDEX MIINDICE2 ON EJEMPLO (NOMBRE,APELLIDO)

--ELIMINAR INDICES
DROP INDEX MIINDICE ON EJEMPLO 

--PARA ELIMINAR LA CLAVE PRIMARIA
ALTER TABLE EJEMPLO DROP CONSTRAINT DNI



drop table ejemplo
SELECT * FROM ejemplo
-------------------------------------------------------------------------------------------------
create DATABASE cursoJsp;

use cursoJsp;

create table usuarios(
    CodUsu char(4) primary key,
    nomUsu varchar(30) not null,
    edadUsu int not null,
    SexoUsu char(1) not null,
    PassUsu varchar(10) not null);
    
    insert into usuarios VALUES('u001','Jose',33,'M','11');
    insert into usuarios VALUES('u002','Christian',24,'M','12');
    insert into usuarios VALUES('u003','Rosa',33,'F','13');
    insert into usuarios VALUES('u004','Olga',36,'F','14');
    insert into usuarios VALUES('u005','Sara',24,'F','15');
    insert into usuarios VALUES('u006','Alan',33,'M','16');
    