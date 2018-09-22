create proc insertar_venta
@idcliente as integer,
@fecha_venta as date,
@tipo_documento as varchar (50),
@num_documento as varchar(50)

as
insert into ventas (idcliente,fecha_venta,tipo_documento,num_documento)
values (@idcliente,@fecha_venta,@tipo_documento,@num_documento)
go

create proc editar_venta
@idventa as integer,
@idcliente as integer,
@fecha_venta as date,
@tipo_documento as varchar(50),
@num_documento as varchar (50)
as
update ventas set idcliente=@idcliente,fecha_venta=@fecha_venta,tipo_documento=@tipo_documento,num_documento=@num_documento
where idventa=@idventa
go

create proc eliminar_venta
@idventa as integer
as
delete from ventas where idventa=@idventa
go

create proc mostrar_venta
as
SELECT        dbo.ventas.idventa, dbo.ventas.idcliente, dbo.cliente.apellidos, dbo.cliente.dni, dbo.ventas.fecha_venta, dbo.ventas.tipo_documento, dbo.ventas.num_documento
FROM            dbo.cliente INNER JOIN
                         dbo.ventas ON dbo.cliente.idcliente = dbo.ventas.idcliente
go




create proc insertar_detalle_venta
@idventa as integer,
@idproducto as integer,
@cantidad as decimal(18,2),
@precio_unitario as decimal(18,2)
as
insert into detalle_venta(idventa,idproducto,cantidad,precio_unitario)
values(@idventa,@idproducto,@cantidad,@precio_unitario)
go


create proc editar_detalle_venta
@iddetalle_venta as integer,
@idventa as integer,
@idproducto as integer,
@cantidad as decimal(18,2),
@precio_unitario as decimal(18,2)
as
update detalle_venta set idventa=@idventa,idproducto=@idproducto,cantidad=@cantidad,precio_unitario=@precio_unitario
where iddetalle_venta=@iddetalle_venta
go


create proc eliminar_detalle_venta
@iddetalle_venta as integer
as
delete from detalle_venta where iddetalle_venta=@iddetalle_venta
go

create proc mostrar_detalle_venta
as
select * from detalle_venta order by iddetalle_venta desc
go

create proc aumentar_stock
@idproducto as integer,
@cantidad as decimal(18,2)
as
update producto set stock=stock+@cantidad where idproducto=@idproducto
go

create proc disminuir_stock
@idproducto as integer,
@cantidad as decimal(18,2)
as
update producto set stock=stock-@cantidad where idproducto=@idproducto
go

