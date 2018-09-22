create proc insertar_cliente
@nombre varchar (50),
@apellidos varchar (50),
@direccion varchar (100),
@telefono varchar (10),
@dni varchar (8)
 as 
 insert into cliente(nombre,apellidos,direccion,telefono,dni) values (@nombre,@apellidos,@direccion,@telefono,@dni)
 go

  