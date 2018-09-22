create proc validar_usuario

@login varchar(50),
@password varchar(50)
as
select * from usuario
 where login=@login and password=@password and acceso='1'
 go
 select * from usuario