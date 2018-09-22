Create database Viajes
use Viajes 

Create  table Cliente(
Num_Cliente int primary key,
Nombre_Cliente varchar(30),
Domicio_Cliente text,
Num_Ciudad int,
foreign key (Num_Ciudad)references Ciudad(Num_Ciudad)
)

insert into Cliente values(1,'Arturo Durán','Aragón',1) 
insert into Cliente values(2,'Michael Bloom','Nothingam',2)
insert into Cliente values(3,'Thierry Planchais','Chliché',3)
insert into Cliente values(4,'Fernando Corona','Monte Real',4)
insert into Cliente values(5,'Eduardo Sánchez','Centro',5)
insert into Cliente values(6,'Orlando Suarez','Asunción',6)
insert into Cliente values(7,'Arnaud Langriliere','Cavalier',7)
insert into Cliente values(8,'David Russert','Queen Elizabeth',8)
insert into Cliente values(9,'Javier Reyes','Las Margaritas',9)
insert into Cliente values(10,'Tim Dole','Gran Belt',10)
insert into Cliente values(11,'Martín Bermudes','Malvinas',4)
insert into Cliente values(12,'Luis Pedro Sánchez','Quinta Avenida',11)
insert into Cliente values(13,'Arnoldo Gutierrez','Empedrada',12)

select * from Cliente

create table Destino(
Num_Destino int primary key,
Num_Ciudad int,
foreign key (Num_Ciudad)references Ciudad(Num_Ciudad)
)

insert into Destino values(1,3)
insert into Destino values(2,13)
insert into Destino values(3,2)
insert into Destino values(4,14)
insert into Destino values(5,15)
insert into Destino values(6,16)
insert into Destino values(7,17)
insert into Destino values(8,18)
insert into Destino values(9,19)
insert into Destino values(10,9)
insert into Destino values(11,20)
insert into Destino values(12,21)
insert into Destino values(13,22)
insert into Destino values(14,23)
insert into Destino values(15,24)
insert into Destino values(16,25)
insert into Destino values(17,26)
insert into Destino values(18,27)
insert into Destino values(19,11)
insert into Destino values(20,28)
insert into Destino values(21,29)
insert into Destino values(22,30)

select * from Destino

create table Viaja(
Num_Cliente int,
Num_Destino int ,
Fecha_Viaje datetime,
foreign key (Num_Cliente)references Cliente(Num_Cliente),
foreign key (Num_Destino)references Destino(Num_Destino)
)

insert into Viaja values(1,10,'10/2/2010')
insert into Viaja values(1,15,'30/10/2010')
insert into Viaja values(1,19,'04/05/2011')
insert into Viaja values(1,21,'31/12/2012')
insert into Viaja values(2,13,'05/03/2010')
insert into Viaja values(2,15,'25/06/2011')
insert into Viaja values(2,16,'12/11/2011')
insert into Viaja values(3,10,'28/08/2012')
insert into Viaja values(3,14,'15/01/2013')
insert into Viaja values(4,7,'15/01/2010')
insert into Viaja values(4,15,'20/07/2010')
insert into Viaja values(4,22,'15/01/2011')
insert into Viaja values(4,17,'20/10/2012')
insert into Viaja values(4,18,'26/09/2012')
insert into Viaja values(5,20,'15/02/2010')
insert into Viaja values(5,2,'14/03/2010')
insert into Viaja values(5,5,'30/03/2011')
insert into Viaja values(5,16,'20/10/2012')
insert into Viaja values(6,10,'10/03/2012')
insert into Viaja values(6,19,'18/06/2012')
insert into Viaja values(7,3,'19/02/2011')
insert into Viaja values(7,7,'18/03/2012')
insert into Viaja values(7,12,'23/10/2012')
insert into Viaja values(8,13,'10/04/2011')
insert into Viaja values(8,10,'26/03/2012')
insert into Viaja values(9,14,'09/03/2010')
insert into Viaja values(9,1,'11/09/2011')
insert into Viaja values(9,13,'15/10/2012')
insert into Viaja values(10,15,'11/10/2012')
insert into Viaja values(10,1,'20/07/2011')
insert into Viaja values(11,7,'15/09/2012')
insert into Viaja values(12,11,'02/02/2011')
insert into Viaja values(13,6,'16/10/2011')
insert into Viaja values(13,8,'11/09/2012')

select * from Viaja

Create table Ciudad(
Num_Ciudad int primary key ,
Nombre_ciudad varchar (30),
Num_Pais int,
foreign key (Num_Pais )references Pais(Num_Pais)
)

insert into Ciudad values(1,'México',1)
insert into Ciudad values(2,'Londres',2)
insert into Ciudad values(3,'Paris',3)
insert into Ciudad values(4,'Buenos Aires',4)
insert into Ciudad values(5,'Aguascalientes',1)
insert into Ciudad values(6,'Bogotá',5)
insert into Ciudad values(7,'Bordeaux',3)
insert into Ciudad values(8,'Aberdeen',2)
insert into Ciudad values(9,'Caracas',6)
insert into Ciudad values(10,'Oresund',7)
insert into Ciudad values(11,'Barcelona',8)
insert into Ciudad values(12,'Cordova',4)
insert into Ciudad values(13,'Madrid',8)
insert into Ciudad values(14,'San Francisco',9)
insert into Ciudad values(15,'Tokio',10)
insert into Ciudad values(16,'Durban',11)
insert into Ciudad values(17,'Cancún',1)
insert into Ciudad values(18,'Moscú',12)
insert into Ciudad values(19,'Berlín',13)
insert into Ciudad values(20,'Sao Paulo',14)
insert into Ciudad values(21,'Quito',15)
insert into Ciudad values(22,'Montreal',16)
insert into Ciudad values(23,'Acapulco',1)
insert into Ciudad values(24,'Roma',17)
insert into Ciudad values(25,'Jerusalén',18)
insert into Ciudad values(26,'Sydney',19)
insert into Ciudad values(27,'León',3)
insert into Ciudad values(28,'Milán',17)
insert into Ciudad values(29,'Nice',3)
insert into Ciudad values(30,'Dublín',20)

select*from Ciudad

Create table Pais(
Num_Pais int primary key ,
Nombre_Pais varchar(30),
)

insert into Pais values(1,'México')
insert into Pais values(2,'Inglaterra')
insert into Pais values(3,'Francia')
insert into Pais values(4,'Argentina')
insert into Pais values(5,'Colombia')
insert into Pais values(6,'Venezuela')
insert into Pais values(7,'Dinamarca')
insert into Pais values(8,'España')
insert into Pais values(9,'Estados Unidos')
insert into Pais values(10,'Japón')
insert into Pais values(11,'Sudáfrica')
insert into Pais values(12,'Rusia')
insert into Pais values(13,'Alemania')
insert into Pais values(14,'Brasil')
insert into Pais values(15,'Ecuador')
insert into Pais values(16,'Canadá')
insert into Pais values(17,'Italia')
insert into Pais values(18,'Israel')
insert into Pais values(19,'Australia')
insert into Pais values(20,'Irlanda')

select * from Pais

-----------------------------------------------------------------
/*1*/

select Nombre_Cliente,Domicio_Cliente  
from Cliente c, Ciudad cd
WHERE c.Num_ciudad=cd.Num_ciudad
and cd.Nombre_ciudad='Buenos Aires'

-----------------------------------------------------------------------
/*2*/

select Nombre_Cliente,Domicio_Cliente, Nombre_ciudad 
from Cliente c,Ciudad cd, Pais ps
WHERE c.Num_ciudad=cd.Num_ciudad and cd.Num_Pais=ps.Num_Pais
and ps.Nombre_Pais='Francia'

--------------------------------------------------------------------------------------
/*3*/

select Nombre_Cliente ,Nombre_Ciudad 
from Cliente c,Viaja vj,Destino ds,Ciudad cd
WHERE c.Num_Cliente=vj.Num_Cliente and vj.Num_Destino=ds.Num_Destino
and ds.Num_ciudad=cd.Num_ciudad
and cd.Nombre_Ciudad='Montreal'

---------------------------------------------------------------------------------------
/*4*/

select count(*) 
from  Cliente c,Viaja vj,Destino ds,Ciudad cd,Pais ps
WHERE c.Num_Cliente=vj.Num_Cliente and vj.Num_Destino=ds.Num_Destino
and ds.Num_ciudad=cd.Num_ciudad and cd.Num_Pais=ps.Num_Pais
and ps.Nombre_Pais='Japón'

---------------------------------------------------------------------------------------
/*5*/

select Nombre_Cliente, c.Num_Cliente , ds.Num_Destino, Nombre_ciudad
from Cliente c, Destino ds, Viaja vj, Ciudad cd
where c.Num_Cliente=vj.Num_Cliente and vj.Num_Destino=ds.Num_Destino
and ds.Num_Ciudad=cd.Num_Ciudad





---------------------------------------------------------------------------------------
/*6*/

select Nombre_Cliente ,c.Num_Cliente, Fecha_Viaje
from Cliente c, Viaja vj
where c.Num_Cliente=vj.Num_Cliente
and vj.Fecha_Viaje='2001'
group by c.Nombre_Cliente, c.Num_Cliente, vj.Fecha_Viaje

---------------------------------------------------------------------------------------
/*7*/

select Nombre_Cliente
from Cliente c, Destino ds, Ciudad cd, Pais ps, Viaja vj
where c.Num_Cliente=vj.Num_Cliente and vj.Num_Destino=ds.Num_Destino and ds.Num_Ciudad=cd.Num_Ciudad
and not cd.Num_Ciudad=28 and ps.Num_Pais=17


---------------------------------------------------------------------------------------
/*8*/

select Nombre_Cliente, ds.Num_Destino, Nombre_ciudad, count(*) as Numero
from Cliente c, Viaja vj, Destino ds, Ciudad cd
where c.Num_Cliente=vj.Num_Cliente 
and vj.Num_Destino=ds.Num_Destino
and ds.Num_Ciudad=cd.Num_Ciudad
and cd.Num_Ciudad=3
group by c.Nombre_Cliente, ds.Num_Destino, cd.Nombre_ciudad




---------------------------------------------------------------------------------------
/*9*/

select Nombre_Cliente, count(vj.Num_Cliente) as Cantidad_Viajes
from Cliente c, Viaja vj
where c.Num_Cliente=vj.Num_Cliente 
group by c.Nombre_Cliente
having count(vj.Num_Cliente) > 0



----------------------------------------------------------------------------------------
/*10*/



   CREATE PROCEDURE ciudades
   
   @ciudad varchar(30)
	as
	select Nombre_Cliente
	from  Ciudad cd, Cliente c, Viaja vj, Destino ds
	where Nombre_ciudad=@ciudad and c.Num_Cliente=vj.Num_Cliente
	and vj.Num_Destino=ds.Num_Destino and ds.Num_Ciudad=cd.Num_Ciudad

		EXECUTE ciudades 'Acapulco';



