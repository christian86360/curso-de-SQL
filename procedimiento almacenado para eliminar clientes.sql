create proc eliminar_cliente
@idcliente integer
as
delete from cliente where idcliente=@idcliente
go

