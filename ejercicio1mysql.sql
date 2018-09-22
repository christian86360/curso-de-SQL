-- MySQL 


CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`compra` (
  `idcompra` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `idproducto` INT NOT NULL COMMENT '',
  `idcliente` INT NOT NULL COMMENT '',
  `nombre` VARCHAR(20) NOT NULL COMMENT '',
  `puesto` VARCHAR(30) NOT NULL COMMENT '',
  PRIMARY KEY (`idcompra`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nombre` VARCHAR(20) NOT NULL COMMENT '',
  `apellido` VARCHAR(30) NOT NULL COMMENT '',
  `fecha_nac` DATE NOT NULL COMMENT '',
  `direccion` VARCHAR(30) NOT NULL COMMENT '',
  `tel` VARCHAR(9) NOT NULL COMMENT '',
  `dni` VARCHAR(8) NOT NULL COMMENT '',
  PRIMARY KEY (`idcliente`)  COMMENT '',
  CONSTRAINT `compra`
    FOREIGN KEY (`idcliente`)
    REFERENCES `mydb`.`compra` (`idcompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `idsuministra` INT NOT NULL COMMENT '',
  `nombre` VARCHAR(20) NOT NULL COMMENT '',
  `detalle_producto` VARCHAR(45) NOT NULL COMMENT '',
  `codigo` VARCHAR(45) NOT NULL COMMENT '',
  `presio` DECIMAL(18,0) NOT NULL COMMENT '',
  PRIMARY KEY (`idproducto`)  COMMENT '',
  CONSTRAINT `producto`
    FOREIGN KEY (`idproducto`)
    REFERENCES `mydb`.`compra` (`idcompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`suministra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`suministra` (
  `idsuministra` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `idprovedor` INT NOT NULL COMMENT '',
  `nombre` VARCHAR(20) NOT NULL COMMENT '',
  PRIMARY KEY (`idsuministra`)  COMMENT '',
  CONSTRAINT `suministra`
    FOREIGN KEY (`idsuministra`)
    REFERENCES `mydb`.`producto` (`idproducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`provedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`provedor` (
  `idprovedor` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `idsuministra` INT NOT NULL COMMENT '',
  `nombre` VARCHAR(20) NOT NULL COMMENT '',
  `apellido` VARCHAR(30) NOT NULL COMMENT '',
  `direccion` VARCHAR(45) NOT NULL COMMENT '',
  `telefono` VARCHAR(9) NOT NULL COMMENT '',
  `nif` VARCHAR(8) NOT NULL COMMENT '',
  `provedorcol` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`idprovedor`)  COMMENT '',
  CONSTRAINT `provedor`
    FOREIGN KEY (`idprovedor`)
    REFERENCES `mydb`.`suministra` (`idsuministra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (1, N'Raul', N'contreras', CAST(N'2016-06-25' AS Date), N'san pascual', N'362683569', N'23434453')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (2, N'Edgardo', N'germano', CAST(N'2017-06-03' AS Date), N'la paz', N'26449673', N'43454564')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (3, N'Edmundo', N'Hebre', CAST(N'2016-06-06' AS Date), N'zapata', N'32558894', N'56834592')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (4, N'Efrain', N'Morales', CAST(N'2016-06-12' AS Date), N'san luis', N'26796356', N'75623075')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (5, N'elsa', N'Rubio', CAST(N'2016-06-14' AS Date), N'esmeraldas', N'346782346', N'45573574')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (6, N'Elvira', N'Ramirez', CAST(N'2016-06-14' AS Date), N'tomas de arrollo', N'325782456', N'74625372')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (7, N'Emiliano', N'monger', CAST(N'2016-06-15' AS Date), N'san agustin', N'324345679', N'35692456')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (8, N'Daniel', N'Contreras', CAST(N'2016-06-23' AS Date), N'san agustin', N'447739674', N'86734593')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (9, N'Ivan', N'Trejo', CAST(N'2016-06-26' AS Date), N'estrella', N'764893678', N'87635628')
INSERT cliente (idcliente, nombre, apellido, fecha_nac, direccion, tel, dni) VALUES (10, N'Alan', N'Cruz', CAST(N'2016-06-28' AS Date), N'villa de aragon', N'764563856', N'86473637')
SET IDENTITY_INSERT [dbo].[cliente] OFF
SET IDENTITY_INSERT [dbo].[compra] ON 

INSERT compra (idcompra, idproducto, idcliente, nombre, puesto) VALUES (4, 4, 1, N'Ernesto', N'ventas')
INSERT compra (idcompra, idproducto, idcliente, nombre, puesto) VALUES (7, 5, 2, N'alfonzo', N'ventas')
INSERT compra (idcompra, idproducto, idcliente, nombre, puesto) VALUES (8, 6, 6, N'alfonzo', N'ventas')
INSERT compra (idcompra, idproducto, idcliente, nombre, puesto) VALUES (9, 4, 3, N'alfonzo', N'ventas')
INSERT compra (idcompra, idproducto, idcliente, nombre, puesto) VALUES (10, 7, 8, N'Lalo', N'ventas')
INSERT compra (idcompra, idproducto, idcliente, nombre, puesto) VALUES (11, 7, 2, N'lalo', N'ventas')
INSERT compra (idcompra, idproducto, idcliente, nombre, puesto) VALUES (12, 9, 10, N'alfonzo', N'ventas')
SET IDENTITY_INSERT [dbo].[compra] OFF
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (4, 1, N'jabon', N'producto de baño', N'3423324', CAST(7 AS Decimal(18, 0)))
INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (5, 2, N'papel', N'pael para impresora', N'3253255', CAST(67 AS Decimal(18, 0)))
INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (6, 6, N'papel de ballo', N'papel de baño', N'3545797', CAST(44 AS Decimal(18, 0)))
INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (7, 4, N'plumas', N'plumas', N'3245355', CAST(12 AS Decimal(18, 0)))
INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (8, 7, N'reglas', N'reglas', N'3252355', CAST(13 AS Decimal(18, 0)))
INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (9, 8, N'cuadernos', N'cuadernos', N'3245325', CAST(7 AS Decimal(18, 0)))
INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (11, 2, N'papel', N'papel para imprecion', N'3253255', CAST(67 AS Decimal(18, 0)))
INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (12, 9, N'sacapuntas', N'sacapuntas', N'3255776', CAST(3 AS Decimal(18, 0)))
INSERT producto (idproducto, idsuminista, nombre, detalle_producto, codigo, presio) VALUES (13, 10, N'libros', N'libros', N'3255775', CAST(45 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[producto] OFF
SET IDENTITY_INSERT [dbo].[provedor] ON 

INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (1, 1, N'Alfonso', N'Perez', N'san agustin', N'34325235', N'34355')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (2, 2, N'Luis', N'arellano', N'pascual', N'77493732', N'34436')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (3, 3, N'Lalo', N'cruz', N'san lorenso', N'32535435', N'35435')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (4, 4, N'Alan', N'sam', N'veracruz', N'23423553', N'34235')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (5, 5, N'jerman', N'losano', N'puebla', N'35354355', N'32533')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (6, 6, N'Unberto', N'mendes', N'toluca', N'32534543', N'32535')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (7, 7, N'kevin', N'molla', N'df', N'32432432', N'43243')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (8, 8, N'rosa', N'perarlta', N'DF', N'32452353', N'53255')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (9, 9, N'sara', N'roca', N'inpulsora', N'35687996', N'46987')
INSERT provedor (idprovedo, idsumistra, nombre, apellido, direccion, telefono, nif) VALUES (10, 10, N'melisa', N'trejo', N'azteca', N'35457889', N'43466')
SET IDENTITY_INSERT [dbo].[provedor] OFF
SET IDENTITY_INSERT [dbo].[suministra] ON 

INSERT suministra (idsuministra, idprovedor, nombre) VALUES (1, 1, N'Alfonso')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (2, 2, N'alfonso')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (3, 2, N'luis')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (4, 4, N'lalo')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (5, 5, N'alfonzo')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (6, 3, N'alfonzo')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (7, 3, N'brenda')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (8, 1, N'brenda')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (9, 7, N'lalo')
INSERT suministra (idsuministra, idprovedor, nombre) VALUES (10, 7, N'lalo')


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


