create proc mostrar_refaccion
as
select Refaccion.Codigo,Refaccion.Nombre,Categoria.id_Categoria,Refaccion.Costo_Uni,
Refaccion.Costo_Vta,Refaccion.stock,Refaccion.Ubicacion,Refaccion.Moto_Pertenece,
Refaccion.Detalle,
Refaccion.imagen
from Refaccion inner join  Categoria on Refaccion.Categoria=Categoria.id_Categoria
order by Refaccion.Codigo desc


select * from Refaccion

create proc insertar_refaccion

@codigo integer,
@nombre varchar(50),
@categoria integer,
@costo_unitario integer,
@costo_venta integer,
@stock integer,
@ubicacion varchar(50),
@moto_pertenece varchar(30),
@detalle varchar(30),
@imagen image
as
insert into Refaccion (Codigo,Nombre,Categoria,Costo_Uni,Costo_Vta,Stock,Ubicacion,Moto_Pertenece,Detalle ,imagen)values
(@codigo,@nombre,@categoria,@costo_unitario,@costo_venta,@stock,@ubicacion,@moto_pertenece,@detalle,@imagen)
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
