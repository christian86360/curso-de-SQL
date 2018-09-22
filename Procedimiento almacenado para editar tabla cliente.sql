create proc editar_cliente
@idcliente integer,
@nombre varchar (50),
@apellidos varchar(50),
@direccion varchar(50),
@telefono varchar (9),
@dni varchar (8)
as
update cliente set nombre=@nombre,apellidos=@apellidos,direccion=@direccion,telefono=@telefono,dni=@dni

where idcliente=@idcliente
go