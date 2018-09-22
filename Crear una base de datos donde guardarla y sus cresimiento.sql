/*Crear una base de datos donde guardarla y sus cresimiento*/
Create database Ventas1
ON
primary
(name=ventas1primary,
 filename='c:\Ventas_data\ventas1primary.mdf',
 size=50MB,
 Maxsize=200,
 filegrowth=20),

 filegroup ventas1FG
 (name=ventas1Data1,
  filename='c:\Ventas_data\ventasData1.ndf',
 size=200MB,
 Maxsize=800,
 filegrowth=100)

 log on
 (name=ventas1log,
 filename='c:\Ventas_data\ventas1log.ldf',
 size=300MB,
 Maxsize=800,
 filegrowth=20)

