

create database negocios

use negocios

create table Paises(
Idpais char(3) Not null primary key,
NombrPais varchar(40) Not null

)

create table Categoria (

 IdCategoria int Not Null primary key,
 NombreCategoria varchar(40) not null,
 Descripcion text not null

)

create table Clientes(
  IdCliente char(5) not null primary key,
  NombreCliente varchar(40) not null,
  DirCliente varchar(80) not null,
  Idpais char(3) not null,
  CONSTRAINT FK_pais FOREIGN KEY(Idpais) REFERENCES Paises(Idpais),
  fonocliente varchar(15) null
)

create table Proveedores(
 
 IdProveedor int not null primary key,
 nombreProvedor varchar(80) not null,
 dirProvedor varchar(100) not null,
 nomContacto varchar(80) not null,
 cargoContacto varchar(50) not null,
 Idpais char(3) not null,
 CONSTRAINT FK_CAT FOREIGN KEY(Idpais) REFERENCES Paises(Idpais),
 fonoProveedor varchar(15) not null,
 faxProveedor varchar(15) not null
)

create table Productos(
IdProductos int not null primary key,
nomProducto varchar(80)not null,
IdProveedor int not null,
 CONSTRAINT FK_provedor FOREIGN KEY(IdProveedor) REFERENCES Proveedores(IdProveedor),
IdCategoria int not null,
 CONSTRAINT FK_Categoria2 FOREIGN KEY(Idcategoria) REFERENCES Categoria(IdCategoria),
cantxUnidad varchar(50) not null,
precioUnidad decimal(10,2) not null,
UniEnExistencia smallint not null,
UniEnPedido smallint not null
)


create table Cargos(
IdCargo int not null primary key,
desCargo varchar(30) not null
)

create table Distritos(
IdDistrito int Not null primary key,
nomDistrito varchar(50) not null
)

create table Empleados(
IdEmpleado int not null primary key,
nomEmpleado varchar(50) not null,
apEmpleado varchar(50) not null,
fecNac  datetime not null,
IdDistrito int not null,
CONSTRAINT FK_distritos FOREIGN KEY(IdDistrito) REFERENCES Distritos(IdDistrito),
fonoEmpleado varchar(15) null,
IdCargo int not null,
 CONSTRAINT FK_cargos FOREIGN KEY(IdCargo) REFERENCES Cargos(IdCargo),
 fecContrata datetime not null,
 fotoEmpleado Image

)

create table PedidosCabe(
 IdPedido int not null primary key,
 IdCliente char(5) not null,
  CONSTRAINT FK_clie2 FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente),
  IdEmpleado int not null,
   CONSTRAINT FK_empleados2 FOREIGN KEY(IdEmpleado) REFERENCES Empleados(IdEmpleado),
   fechaPedido datetime not null,
   fechaEntrega datetime not null,
   fechaEnvio datetime not null,
   enviopedido char(1) not null,
   destinatario varchar(60) not null,
   dirdestinatario varchar(100) not null
)
----Crear los Esquemas de la base de datos----

create schema venta authorization DBO
go

create schema compra authorization DBO
go

create schema RRHH authorization DBO
go

---Listar los Esqumas creados---
select * from sys.schemas
where principal_id=1
go

---operadores de asignacion---
declare @NUM int
set @NUM=15
print 'El numero ingresado es:' + str(@NUM)
 ---Ejemplo: Mostrar todos los productos donde el valor del precioUnidad se encuentre entre 27 a 30

USE negocios
GO
SELECT P.NOMPRODUCTO 'PRODUCTO',
C.NOMCATEGORIA 'CATEGORIA'
FROM COMPRA.PRODUCTOS P
JOIN COMPRA.CATEGORIAS C ON P.IDCATEGORIA = C.IDCATEGORIA
WHERE P.PRECIOUNIDAD BETWEEN 27 AND 30
ORDER BY P.NOMPRODUCTO
GO
-- RETORNA LOS REGISTROS DE EMPLEADOS DONDE SU APELLIDO TERMINE EN KING
SELECT * FROM EMPLEADOS
WHERE APEMPLEADO LIKE '%KING'
GO
SELECT * FROM Empleados

---RETORNA LOS REGISTROS DE EMPLEADO DONDE SU APELLIDO INICIE CON KING
SELECT * FROM EMPLEADOS
WHERE apEmpleado LIKE 'KING%'

-- RETORNA LOS REGISTROS DE EMPLEADOS DONDE SU APELLIDO CONTENGA LA EXPRESION KING
SELECT * FROM EMPLEADOS
WHERE apEmpleado like '%KING%'