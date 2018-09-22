SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `basereserva` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `basereserva` ;

-- -----------------------------------------------------
-- Table `basereserva`.`habitacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `basereserva`.`habitacion` (
  `idhabitacion` INT NOT NULL AUTO_INCREMENT ,
  `numero` VARCHAR(4) NOT NULL ,
  `piso` VARCHAR(2) NOT NULL ,
  `descripcion` VARCHAR(255) NULL ,
  `caracteristicas` VARCHAR(512) NULL ,
  `precio_diario` DECIMAL(7,2) NOT NULL ,
  `estado` VARCHAR(15) NOT NULL ,
  `tipo_habitacion` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idhabitacion`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `basereserva`.`persona`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `basereserva`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(20) NOT NULL ,
  `apaterno` VARCHAR(20) NOT NULL ,
  `amaterno` VARCHAR(20) NOT NULL ,
  `tipo_documento` VARCHAR(15) NOT NULL ,
  `num_documento` VARCHAR(8) NOT NULL ,
  `direccion` VARCHAR(100) NULL ,
  `telefono` VARCHAR(8) NULL ,
  `email` VARCHAR(25) NULL ,
  PRIMARY KEY (`idpersona`) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) ,
  UNIQUE INDEX `telefono_UNIQUE` (`telefono` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `basereserva`.`cliente`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `basereserva`.`cliente` (
  `idpersona` INT NOT NULL ,
  `codigo_cliente` VARCHAR(10) NOT NULL ,
  PRIMARY KEY (`idpersona`) ,
  UNIQUE INDEX `codigo_cliente_UNIQUE` (`codigo_cliente` ASC) ,
  CONSTRAINT fk_persona_cliente
    FOREIGN KEY (`idpersona` )
    REFERENCES `basereserva`.`persona` (`idpersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `basereserva`.`trabajador`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `basereserva`.`trabajador` (
  `idpersona` INT NOT NULL ,
  `sueldo` DECIMAL(7,2) NOT NULL ,
  `acceso` VARCHAR(15) NOT NULL ,
  `login` VARCHAR(15) NOT NULL ,
  `password` VARCHAR(20) NOT NULL ,
  `estado` VARCHAR(1) NOT NULL ,
  PRIMARY KEY (`idpersona`) ,
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) ,
  CONSTRAINT `fk_persona_trabajador`
    FOREIGN KEY (`idpersona` )
    REFERENCES `basereserva`.`persona` (`idpersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `basereserva`.`producto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `basereserva`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NOT NULL ,
  `descripcion` VARCHAR(255) NULL ,
  `unidad_medida` VARCHAR(20) NOT NULL ,
  `precio_venta` DECIMAL(7,2) NOT NULL ,
  PRIMARY KEY (`idproducto`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `basereserva`.`reserva`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `basereserva`.`reserva` (
  `idreserva` INT NOT NULL AUTO_INCREMENT ,
  `idhabitacion` INT NOT NULL ,
  `idcliente` INT NOT NULL ,
  `idtrabajador` INT NOT NULL ,
  `tipo_reserva` VARCHAR(20) NOT NULL ,
  `fecha_reserva` DATE NOT NULL ,
  `fecha_ingresa` DATE NOT NULL ,
  `fecha_salida` DATE NOT NULL ,
  `costo_alojamiento` DECIMAL(7,2) NOT NULL ,
  `estado` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`idreserva`) ,
  INDEX `fk_reserva_habitacion_idx` (`idhabitacion` ASC) ,
  INDEX `fk_reserva_cliente_idx` (`idcliente` ASC) ,
  INDEX `fk_reserva_trabajador_idx` (`idtrabajador` ASC) ,
  CONSTRAINT `fk_reserva_habitacion`
    FOREIGN KEY (`idhabitacion` )
    REFERENCES `basereserva`.`habitacion` (`idhabitacion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_cliente`
    FOREIGN KEY (`idcliente` )
    REFERENCES `basereserva`.`cliente` (`idpersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_trabajador`
    FOREIGN KEY (`idtrabajador` )
    REFERENCES `basereserva`.`trabajador` (`idpersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `basereserva`.`consumo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `basereserva`.`consumo` (
  `idconsumo` INT NOT NULL AUTO_INCREMENT ,
  `idreserva` INT NOT NULL ,
  `idproducto` INT NOT NULL ,
  `cantidad` DECIMAL(7,2) NOT NULL ,
  `precio_venta` DECIMAL(7,2) NOT NULL ,
  `estado` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`idconsumo`) ,
  INDEX `fk_consumo_producto_idx` (`idproducto` ASC) ,
  INDEX `fk_consumo_reserva_idx` (`idreserva` ASC) ,
  CONSTRAINT `fk_consumo_producto`
    FOREIGN KEY (`idproducto` )
    REFERENCES `basereserva`.`producto` (`idproducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_consumo_reserva`
    FOREIGN KEY (`idreserva` )
    REFERENCES `basereserva`.`reserva` (`idreserva` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `basereserva`.`pago`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `basereserva`.`pago` (
  `idpago` INT NOT NULL AUTO_INCREMENT ,
  `idreserva` INT NOT NULL ,
  `tipo_comprobante` VARCHAR(20) NOT NULL ,
  `num_comprobante` VARCHAR(20) NOT NULL ,
  `igv` DECIMAL(4,2) NOT NULL ,
  `total_pago` DECIMAL(7,2) NOT NULL ,
  `fecha_emision` DATE NOT NULL ,
  `fecha_pago` DATE NOT NULL ,
  PRIMARY KEY (`idpago`) ,
  INDEX `fk_pago_reserva_idx` (`idreserva` ASC) ,
  CONSTRAINT `fk_pago_reserva`
    FOREIGN KEY (`idreserva` )
    REFERENCES `basereserva`.`reserva` (`idreserva` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
