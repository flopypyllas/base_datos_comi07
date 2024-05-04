-- MySQL Script generated by MySQL Workbench
-- Sat May  4 01:09:06 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema Entregable
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Entregable` ;

-- -----------------------------------------------------
-- Schema Entregable
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entregable` ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Bloques`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Bloques` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Bloques` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

USE `Entregable` ;

-- -----------------------------------------------------
-- Table `Entregable`.`Unidades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Entregable`.`Unidades` ;

CREATE TABLE IF NOT EXISTS `Entregable`.`Unidades` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `curso_id` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `fecha_de_inicio` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entregable`.`Cursos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Entregable`.`Cursos` ;

CREATE TABLE IF NOT EXISTS `Entregable`.`Cursos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `imagen` VARCHAR(500) NOT NULL,
  `fecha_de_inicio` DATE NOT NULL,
  `fecha_de_finalizacion` DATE NOT NULL,
  `cupo_max` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entregable`.`Usuarios_Cursos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Entregable`.`Usuarios_Cursos` ;

CREATE TABLE IF NOT EXISTS `Entregable`.`Usuarios_Cursos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  `categoria_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entregable`.`Usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Entregable`.`Usuarios` ;

CREATE TABLE IF NOT EXISTS `Entregable`.`Usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `contrasenia` VARCHAR(20) NOT NULL,
  `categoria_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entregable`.`Categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Entregable`.`Categoria` ;

CREATE TABLE IF NOT EXISTS `Entregable`.`Categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `estudiante` VARCHAR(45) NOT NULL,
  `docente` VARCHAR(45) NOT NULL,
  `editor` VARCHAR(45) NOT NULL,
  `administrador` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entregable`.`Clases`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Entregable`.`Clases` ;

CREATE TABLE IF NOT EXISTS `Entregable`.`Clases` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `unidad_id` INT NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `fecha_de_inicio` DATE NOT NULL,
  `visibilidad` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entregable`.`Bloques`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Entregable`.`Bloques` ;

CREATE TABLE IF NOT EXISTS `Entregable`.`Bloques` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `clase_id` INT NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `contenido` TEXT(500) NOT NULL,
  `tipo_id` INT NOT NULL,
  `visibilidad` TINYINT(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entregable`.`tipo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Entregable`.`tipo` ;

CREATE TABLE IF NOT EXISTS `Entregable`.`tipo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(45) NOT NULL,
  `video` VARCHAR(45) NOT NULL,
  `presentacion` VARCHAR(45) NOT NULL,
  `pdf` VARCHAR(45) NOT NULL,
  `archivo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;