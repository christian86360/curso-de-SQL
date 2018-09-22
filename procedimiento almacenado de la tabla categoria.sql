create proc mostrar_categoria
as
select * from Categoria order by id_Categoria desc
go 


create proc insertar_categoria
@nombre_categoria varchar(50)
as
insert into Categoria(Nombre_Cat) values (@nombre_categoria)
go


create proc editar_categoria
@idcategoria integer,
@nombre_categoria varchar(50)
as
update Categoria set Nombre_Cat=@nombre_categoria
where id_Categoria=@idcategoria
go


create proc eliminar_categoria
@idcategoria integer
as
delete from Categoria where id_Categoria=@idcategoria
go