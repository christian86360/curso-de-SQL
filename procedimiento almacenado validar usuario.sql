create proc validar_usuario

@Nombre varchar(50),
@Contrase�a varchar(50)
as
select * from Usuarios
 where Nombre=@Nombre and Contrase�a=@Contrase�a 
 go
 select * from Usuarios