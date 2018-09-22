Create database Biblioteca

go 
use biblioteca
go

create table Usuarios(
Idusuarios Int identity primary key not null,
Nombre varchar (30) not null,
APaterno varchar(25) not null,
AMaterno varchar(25),
FechaNacimoiento SMALLdatetime,
Telefono1 varchar(15)Not null
CHECK (Telefono1 Like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),-- Retriccion en bd
Telefono2 varchar(15),
Email varchar(30),
Constraint ck_Email CHECK (Email Like '%@%.%')
)

---------TABLA LIBRO----------------------------
create  table Libro(
 IdLibro int identity Primary key not null,
 Titulo varchar(50) not null,
 Edicion varchar(25) not null,
 IdEditorial  int not null,
constraint pk_libro_editorial Foreign key (IdLibro) References
Libro(IdLibro)
)

--------------Prestamo------------------------------------
create table Prestamo(
 IdPrestamo int IDENTITY not null,
 FechaPrestamo datetime,
FechaVencimiento Datetime,
FechaDevolucion Datetime,
Multa Money Default $0.00,
IdUsuario Int not null,
IdEjemplar Int not null
)

----------------------Ejemplares------------------------

create table Ejemplares(
IdEjemplares int Identity primary key not null,
FechaAdquisicion  datetime,
IdLibro int 
)

--------------------Editorial------------------------------
create  table Editorial(
IdEditorial int identity primary key not null,
NombreEditorial varchar(30) not null,
----Contrain pk_editorial Primary Key (IdEditorial)
)
------Publico--------------------------------------------
create table Publico(
IdPublicacion int not null,
IdLibro int,
IdAutor int
)
--------------Autor--------------------
create table Autor(
IdAutor int Identity primary key ,
Apaterno varchar(30),
Amaterno varchar(30),
)

--------------asignamos de estilo de fecha dia mes para que inserte correctamente
set Dateformat dmy
----------Insert alas tablas
insert into Usuarios (Nombre,APaterno,AMaterno,FechaNacimiento,Telefono1,Telefono2,Email)
values('Francisco Javier','Hernandes','Barajas',
convert(datetime,'22/10/1976'),'5456878916','8129798787','javobarajas@hotmail.com')

insert into Usuarios (Nombre,APaterno,Amaterno,FechaNacimiento,Telefono1,Telefono2,Email)
values('Diego Luis Fernando ','Barajas','Gomez',convert(datetime,
'17/12/1996'),'5359589892','','dilufer@hotmail.com')

insert into Usuarios (Nombre,APaterno,Amaterno,FechaNacimiento,Telefono1,Telefono2,Email)
values('Christian ','Lugo','Marroquin',convert(datetime,
'1/02/1993'),'57881496','551436785','chris86348@gmail.com')

insert into Usuarios (Nombre,APaterno,Amaterno,FechaNacimiento,Telefono1,Telefono2,Email)
values('Juan ','Perez','Gomez',convert(datetime,
'22/04/1993'),'57881234','551236785','juan8633454@gmail.com')

insert into Usuarios (Nombre,APaterno,Amaterno,FechaNacimiento,Telefono1,Telefono2,Email)
values('Irvin ','Hernandez','Juarez',convert(datetime,
'24/06/1997'),'5783346454','55345645676','juarez36908@gmail.com')



--------------------------Isert Autor
insert into Autor(Apaterno,Amaterno)
values('Miguel  ','Cervantes')
insert into Autor(Apaterno,Amaterno)
values('Raymond','Chandler')
insert into Autor(Apaterno,Amaterno)
values('Gabriel   ','García Márquez')
insert into Autor(Apaterno,Amaterno)
values('Pablo','Neruda')
insert into Autor(Apaterno,Amaterno)
values(' Herman ','Hesse')


--------------------------------------Insert tabla libros
insert into Libro (Titulo,Edicion,IdEditorial)
values('Hary Poter','1',1)

insert into Libro (Titulo,Edicion,IdEditorial)
values('Principito','2',2)

insert into Libro (Titulo,Edicion,IdEditorial)
values('La chica del tren','7',3)


insert into Libro (Titulo,Edicion,IdEditorial)
values('Demian','3',4)

insert into Libro (Titulo,Edicion,IdEditorial)
values('El caballero de la armadura dorada','9',8)


---------------Insert Prestamo


insert into Prestamo (FechaPrestamo,FechaVencimiento,FechaDevolucion,Multa,idUsuarios,IdEjemplar)
values('1/09/2016','22/09/2016','23/09/2016',7.00,1,2)
insert into Prestamo (FechaPrestamo,FechaVencimiento,FechaDevolucion,Multa,idUsuarios,IdEjemplar)
values('5/09/2016','28/09/2016','26/09/2016',6.00,2,5)
insert into Prestamo (FechaPrestamo,FechaVencimiento,FechaDevolucion,Multa,idUsuarios,IdEjemplar)
values('8/09/2016','23/09/2016','23/09/2016',5.00,5,8)
insert into Prestamo (FechaPrestamo,FechaVencimiento,FechaDevolucion,Multa,idUsuarios,IdEjemplar)
values('14/09/2016','12/09/2016','23/09/2016',7.00,3,4)
insert into Prestamo (FechaPrestamo,FechaVencimiento,FechaDevolucion,Multa,idUsuarios,IdEjemplar)
values('7/09/2016','22/09/2016','23/09/2016',7.00,6,2)

------------------Insert editorial

insert into Editorial (NombreEditorial)
values('cisne')


insert into Editorial (NombreEditorial)
values('pendulo')

insert into Editorial (NombreEditorial)
values('fce')

insert into Editorial (NombreEditorial)
values('mcgraWHILL')

insert into Editorial (NombreEditorial)
values('PLANETA')

insert into Editorial (NombreEditorial)
values('alfa omega')


------Ejemplares
insert into Ejemplares (FechaAdquisicion,IdLibro)
values('6/08/2009',1)
insert into Ejemplares (FechaAdquisicion,IdLibro)
values('22/07/2010',1)
insert into Ejemplares (FechaAdquisicion,IdLibro)
values('1/08/2010',1)
insert into Ejemplares (FechaAdquisicion,IdLibro)
values('28/09/2010',1)
insert into Ejemplares (FechaAdquisicion,IdLibro)
values('12/01/2010',1)




----------------Publico------


------Publico--------------------------------------------
insert into Ejemplares (IdPublicacion,IdLibro)
values(1,3)
insert into Ejemplares (IdPublicacion,IdLibro)
values(2,3)
insert into Ejemplares (IdPublicacion,IdLibro)
values(4,6)
insert into Ejemplares (IdPublicacion,IdLibro)
values(1,3)
insert into Ejemplares (IdPublicacion,IdLibro)
values(1,3)






---------------------------
select * from Usuarios
select * from Autor
select *from Libro
select *from Editorial
SELECT *FROM Ejemplares
select *from Prestamo
select *from Publico

