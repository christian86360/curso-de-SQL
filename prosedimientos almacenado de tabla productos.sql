create proc mostrar_producto
as
select producto.idproducto,producto.idcategoria,categoria1.nombre_categoria,producto.nombre,
producto.descripcion,producto.stock,producto.presio_compra,producto.presio_compra,producto.fecha_vencimiento,
producto.imagen
from producto inner join  categoria1 on producto.idcategoria=categoria1.idcategoria
order by producto.idproducto desc


create proc insertar_producto
@idcategoria integer,
@nombre varchar(50),
@descripcion varchar(50),
@stock decimal(18,2),
@presio_compra decimal(18,2),
@presio_venta decimal(18,2),
@fecha_vencimento date,
@imagen image
as
insert into producto (idcategoria,nombre,descripcion,stock,presio_compra,presio_venta,fecha_vencimiento,imagen)values
(@idcategoria,@nombre,@descripcion,@stock,@presio_compra,@presio_venta,@fecha_vencimento,@imagen)
go


create proc editar_producto
@idproducto integer,
@idcategoria integer,
@nombre varchar(50),
@descripcion varchar(50),
@stock decimal(18,2),
@presio_compra decimal(18,2),
@presio_venta decimal(18,2),
@fecha_vencimento date,
@imagen image
as
update producto set idcategoria=@idcategoria,nombre=@nombre,descripcion=@descripcion,
                    stock=@stock,presio_compra=@presio_compra,presio_venta=@presio_venta,
					fecha_vencimiento=@fecha_vencimento,imagen=@imagen
where idproducto=@idproducto
go


create proc eliminar_producto
@idproducto integer
as

delete from producto where idproducto=@idproducto
go


select*from producto
select*from categoria1
