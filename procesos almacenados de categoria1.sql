create proc mostrar_categoria
as
select * from categoria1 order by idcategoria desc
go 


create proc insertar_categoria
@nombre_categoria varchar(50)
as
insert into categoria1(nombre_categoria) values (@nombre_categoria)
go


create proc editar_categoria
@idcategoria integer,
@nombre_categoria varchar(50)
as
update categoria1 set nombre_categoria=@nombre_categoria
where idcategoria=@idcategoria
go


create proc eliminar_categoria
@idcategoria integer
as
delete from categoria1 where idcategoria=@idcategoria
go