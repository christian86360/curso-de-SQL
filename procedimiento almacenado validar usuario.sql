create proc validar_usuario

@Nombre varchar(50),
@Contraseņa varchar(50)
as
select * from Usuarios
 where Nombre=@Nombre and Contraseņa=@Contraseņa 
 go
 select * from Usuarios