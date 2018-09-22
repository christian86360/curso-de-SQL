create proc validar_usuario

@Nombre varchar(50),
@Contraseña varchar(50)
as
select * from Usuarios
 where Nombre=@Nombre and Contraseña=@Contraseña 
 go
 select * from Usuarios