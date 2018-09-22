

create database Examen

use Examen

create table cliente(
  
  id_cliente int,
  nombre_cliente varchar(20),
  estado varchar(20)

)
INSERT INTO Cliente VALUES
INSERT INTO Cliente VALUES
INSERT INTO Cliente VALUES



create table orden(
id_orden int,
fecha date,
id_cliente int
)

create table articulo(
nombre_item varchar,
des_Item varchar,
presio int
)




------------------------------CONSULTAS--------------------------------
--1.- devuelve los clientes y que es lo que han comprado 
SELECT C.Nombre, NC.Codigo,R.Nombre,NC.Cantidad FROM Cliente C,Nota_Cant NC,Venta v, Refaccion R
WHERE NC.NumNota = v.NumNota AND v.Cliente = C.id_Cliente AND NC.Codigo = R.Codigo

--2.-cantidad a pagar por los productos adquiridos por el cliente jazmin
SELECT * FROM Cliente
SELECT * FROM Dir_Cliente
SELECT * FROM Refaccion
SELECT * FROM Nota_Cant
SELECT * FROM Venta

SELECT C.Nombre,NC.Codigo,R.Nombre,(NC.Cantidad*R.Costo_Vta) AS TotalPagar FROM Cliente c,Nota_Cant NC,Refaccion R, Venta v
WHERE v.Cliente = c.id_Cliente AND c.Nombre = 'Jazmin' AND v.NumNota = NC.NumNota AND NC.Codigo = R.Codigo 

--3.-todos los productos ordenados asc 
select * from Refaccion order by Refaccion.Nombre asc

--4.-las refacciones que corresponden a la GZ150
SELECT * FROM Refaccion where Moto_Pertenece like '%GZ150%'

--5.-las refacciones ordenadas por precio y luego por nombre 
SELECT * FROM Refaccion ORDER BY Costo_Vta,Nombre

--6.-Las refacciones que pertenecen a la categoria bujias 
select * from Refaccion
select * from Categoria
select * from Almacen

select r.Codigo,r.Nombre,c.Nombre_Cat,r.Costo_Vta,r.Descripcion,r.Moto_Pertenece,r.Stock from Refaccion r,Categoria c
where r.Categoria = c.id_Categoria AND c.Nombre_Cat = 'Bujias'

--7.-Ubicacion de las bujias dentro del almacen
SELECT r.Codigo,R.Nombre,a.Ubica_Almacen FROM Refaccion R,Almacen a, Categoria c
WHERE R.Categoria =  c.id_Categoria and a.Categoria = c.id_Categoria AND R.Nombre like '%Bujia%'

--8.-Los clientes que viven en la colonia Roma 
SELECT c.Nombre,c.Ap_Paterno,c.Ap_Materno,c.Tele_Cel FROM Cliente c,Dir_Cliente dc
WHERE c.id_Direccion = dc.id_Direccion AND dc.Colonia = 'Roma'

--9.-las refacciones que corresponden a la EN125-2A y en que almacen estan 
SELECT r.Codigo,r.Nombre,r.Categoria,r.Costo_Vta,r.Moto_Pertenece,a.Ubica_Almacen FROM Refaccion r,Almacen a, Categoria c where Moto_Pertenece like '%EN125-2A%' 
AND R.Categoria =  c.id_Categoria and a.Categoria = c.id_Categoria 

--10.-todas las refacciones que el precio sea menor a 200
SELECT R.Codigo,R.Nombre,R.Costo_Vta FROM Refaccion R WHERE Costo_Vta < 200

--11.-La suma total de las refacciones que compro cada cliente 
SELECT C.Nombre,sum((NC.Cantidad*R.Costo_Vta)) AS TotalPagar FROM Cliente c,Nota_Cant NC,Refaccion R, Venta v
WHERE v.Cliente = c.id_Cliente AND v.NumNota = NC.NumNota AND NC.Codigo = R.Codigo group by C.Nombre

--12.-obten el promedio del costo de vta de las refacciones
SELECT avg(Costo_Vta) as PrecioCostoVta from Refaccion r 

--13.-devuelve los empleados que han vendido bujias
select * from Venta
select * from Nota_Cant
SELECT * FROM Refaccion
SELECT * FROM Empleado

select e.Nombre as Empleado,nc.Codigo,r.Nombre as Refaccion,nc.Cantidad from Empleado e,Nota_Cant nc, Refaccion r,Venta v
where v.Empleado = e.id_Empleado AND v.NumNota = nc.NumNota AND r.Codigo = nc.Codigo AND r.Nombre LIKE '%Bujia%'

--14.-muestra los empleados con su respectivo usuario
select e.Nombre,u.Nombre as Usuario,u.Contraseña from Empleado e,Usuarios u
where e.Usuario = u.ID

--15.- promedio del costo unitario de las refacciones que pertenecen a la GZ150
SELECT avg(r.Costo_Uni) as Costo_Unitario, r.Moto_Pertenece FROM Refaccion r 
where r.Moto_Pertenece like '%GZ150%' GROUP BY(r.Moto_Pertenece)

--16.- Muestra a los clientes y por quien fue atendido 
select * from Cliente
select * from Empleado
select * from Venta

select e.Nombre as Empleado,c.Nombre as Cliente from Empleado e, Cliente c, Venta v
where v.Cliente = c.id_Cliente and e.id_Empleado = v.Empleado

--17.-Los productos que empiecen con B
SELECT * FROM Refaccion WHERE Nombre like '%B%' 

--18.-obtener los datoss de las refacciones sin repeticiones
SELECT Distinct(Nombre) FROM Refaccion