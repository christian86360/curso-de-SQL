/*cREAR UNA BASE DE DATOS*/

CREATE DATABASE SqlServer on
(
name=Sqlserver_bd,

FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SqlServer.mdf',
SIZE= 10MB, MAXSIZE=unlimited , FILEGROWTH=10%


)
log on
(

 name=Sqlserverlog_bd,

FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SqlServer_log.mdf',
 SIZE=20MB, MAXSIZE= 100MB,FILEGROWTH=10%

)

/*PARA ELIMINAR UNA BASE DE DATOS*/
DROP DATABASE SqlServer