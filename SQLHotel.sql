create database hotel

CREATE TABLE cliente (
  idpersona int NOT NULL,
  codigo_cliente varchar(10) NOT NULL,
  PRIMARY KEY (idpersona),
  --CONSTRAINT fk_persona FOREIGN KEY (idpersona )REFERENCES  (idpersona)
  constraint pk_persona Foreign key (idpersona)References persona (idpersona)

 
) 

INSERT INTO cliente (idpersona,codigo_cliente) VALUES
(1, '1'),
(2, '3');

select * from cliente

CREATE TABLE  consumo(
  idconsumo int Identity(1,1) NOT NULL ,
  idreserva int NOT NULL,
  idproducto int NOT NULL,
  cantidad decimal(7,2) NOT NULL,
  precio_venta decimal(7,2) NOT NULL,
  estado varchar(20) NOT NULL,
  PRIMARY KEY (idconsumo),
   constraint pk_reserva Foreign key (idreserva)References reserva (idreserva)
  
) 
INSERT INTO consumo ( idreserva,idproducto, cantidad,precio_venta,estado) VALUES
( 2, 2, '3.00', '1.00', 'Aceptado'),
( 1, 1, '2.00', '3.00', 'Aceptado');

select * from consumo


CREATE TABLE  habitacion (
  idhabitacion int Identity(1,1) NOT NULL ,
  numero varchar(4) NOT NULL,
  piso varchar(2) NOT NULL,
  descripcion varchar(255) DEFAULT NULL,
  caracteristicas varchar(512) DEFAULT NULL,
  precio_diario decimal(7,2) NOT NULL,
  estado varchar(15) NOT NULL,
  tipo_habitacion varchar(20) NOT NULL,
  PRIMARY KEY (idhabitacion)
  
)
INSERT INTO habitacion (numero,piso,descripcion,caracteristicas,precio_diario,estado,tipo_habitacion) VALUES
('101', '1', 'Habitación Matrimonial', 'Dos camas, baño propio, bar.', '200.00', 'Disponible', 'Individual'),
('102','2','Individual','Una cama , baño propio,bar.','130.00','Disponible','Individual');

select * from habitacion


CREATE TABLE pago (
  idpago  int Identity(1,1) NOT NULL,
  idreserva int NOT NULL,
  tipo_comprobante varchar(20) NOT NULL,
  num_comprobante varchar(20) NOT NULL,
  igv decimal(4,2) NOT NULL,
  total_pago decimal(7,2) NOT NULL,
  fecha_emision date NOT NULL,
  fecha_pago date NOT NULL,
  PRIMARY KEY (idpago),

 constraint pk_reserva Foreign key (idreserva)References reserva (idreserva)

) 
INSERT INTO pago ( idreserva,tipo_comprobante,num_comprobante,igv,total_pago,fecha_emision,fecha_pago) VALUES
( 1, 'Factura', '0001-00001', '18.00', '100.00', '2016-02-16', '2016-02-16'),
( 2, 'Factura', '0001-0002', '18.00', '109.00', '2016-02-16', '2016-02-16');


select* from pago


CREATE TABLE persona (
  idpersona int identity (1,1) NOT NULL,
  nombre varchar(20) NOT NULL,
  apaterno varchar(20) NOT NULL,
  amaterno varchar(20) NOT NULL,
  tipo_documento varchar(15) NOT NULL,
  num_documento varchar(8) NOT NULL,
  direccion varchar(100) DEFAULT NULL,
  telefono varchar(8) DEFAULT NULL,
  email varchar(25) DEFAULT NULL,
  PRIMARY KEY (idpersona),


) 
INSERT INTO persona (nombre,apaterno,amaterno,tipo_documento,num_documento,direccion,telefono,email) VALUES
('Juan Carlos', 'Arcila', 'Hernandez', 'DNI', '4771577', 'Ecatepec Venus No 23','21321232','juanvdf@gmail.com')
INSERT INTO persona (nombre,apaterno,amaterno,tipo_documento,num_documento,direccion,telefono,email) VALUES
( 'Ana', 'Diaz', 'Mundaca', 'DNI', '4859687', 'Ecatepec Amapola No 42', '98745698', 'diaz234@hotmail.com')

select * From persona

CREATE TABLE producto (
  idproducto int Identity(1,1) NOT NULL,
  nombre varchar(45) NOT NULL,
  descripcion varchar(255) DEFAULT NULL,
  unidad_medida varchar(20) NOT NULL,
  precio_venta decimal(7,2) NOT NULL,
  PRIMARY KEY (idproducto)
) 

INSERT INTO producto ( nombre, descripcion,unidad_medida,precio_venta) VALUES
( 'Agua Mineral', 'Agua de mesa.', 'UND', '3.00'),
( 'Galleta Choco', 'Galletas', 'UND', '1.00');

select * from producto

CREATE TABLE reserva (
  idreserva int Identity(1,1) NOT NULL,
  idhabitacion int NOT NULL,
  idcliente int NOT NULL,
  idtrabajador int NOT NULL,
  tipo_reserva varchar(20) NOT NULL,
  fecha_reserva date NOT NULL,
  fecha_ingresa date NOT NULL,
  fecha_salida date NOT NULL,
  costo_alojamiento decimal(7,2) NOT NULL,
  estado varchar(15) NOT NULL,
  PRIMARY KEY (idreserva),
  CONSTRAINT pk_habitacion FOREIGN KEY (idhabitacion ),
  CONSTRAINT pk_cliente FOREIGN KEY (idpersona) REFERENCES cliente (idpersona),
  CONSTRAINT pk_trabajador FOREIGN KEY (idtrabajador) REFERENCES  trabajador (idpersona)
 
) 
INSERT INTO reserva ( idhabitacion, idcliente, idtrabajador, tipo_reserva, fecha_reserva, fecha_ingresa, fecha_salida, costo_alojamiento,estado) VALUES
( 1, 2, 1, 'Alquiler', '2016-02-15', '2016-02-15', '2016-02-16', '100.00', 'Pagada')
INSERT INTO reserva ( idhabitacion, idcliente, idtrabajador, tipo_reserva, fecha_reserva, fecha_ingresa, fecha_salida, costo_alojamiento,estado) VALUES
( 2, 2, 1, 'Reserva', '2016-02-15', '2016-02-15', '2016-02-16', '100.00', 'Pagada');

select * from reserva



CREATE TABLE trabajador (
  idpersona int NOT NULL,
  sueldo decimal(7,2) NOT NULL,
  acceso varchar(15) NOT NULL,
  login varchar(15) NOT NULL,
  password varchar(20) NOT NULL,
  estado varchar(1) NOT NULL,
  PRIMARY KEY (idpersona),
  CONSTRAINT pk_trabajador FOREIGN KEY (idpersona)REFERENCES  persona (idpersona)
  
) 

INSERT INTO trabajador (idpersona, sueldo,acceso, login, password, estado) VALUES
(1, '5000.00', 'Administrador', 'admin', 'admin', 'A');

INSERT INTO trabajador (idpersona, sueldo,acceso, login, password, estado) VALUES
(2, '10000.00', 'Gerente', 'Geren', 'fwewegw12', 'V');
INSERT INTO trabajador (idpersona, sueldo,acceso, login, password, estado) VALUES
(3, '4000.00', 'Recepcionista', 'Recep', 'fdfhgef3254', 'I');
INSERT INTO trabajador (idpersona, sueldo,acceso, login, password, estado) VALUES
(4, '9000.00', 'Jefe Recepcion', 'JRecep', 'dsv24141', 'M');
INSERT INTO trabajador (idpersona, sueldo,acceso, login, password, estado) VALUES
(5, '7000.00', 'Gobernata Principal', 'GPric', 'sdjklsd2', 'D');

select * from trabajador


create table hospedaje(
  idhospedaje int NOT NULL,
  idreserva int NOT NULL,
  idproducto int NOT NULL,
  nombre_cliente varchar(20) NOT NULL,
  apellidoP_cliente varchar(15) NOT NULL,
  apellidoM_cliente varchar(15) NOT NULL,
  Forma_pago varchar(10) NOT NULL,
  oservaciones varchar(30) NOT NULL,
  PRIMARY KEY (idhospedaje),
  CONSTRAINT pk_reserva FOREIGN KEY (idreserva) REFERENCES  reserva (idreserva),
  CONSTRAINT pk_producto FOREIGN KEY (idproducto) REFERENCES  producto (idproducto)

  )

  select * from hospedaje