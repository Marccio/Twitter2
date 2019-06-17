-- MySQL Script generated by MySQL Workbench
-- Mon Jun 10 15:19:09 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bancoTwitter
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bancoTwitter` ;

-- -----------------------------------------------------
-- Schema bancoTwitter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bancoTwitter` DEFAULT CHARACTER SET utf8 ;
USE `bancoTwitter` ;

-- -----------------------------------------------------
-- Table `bancoTwitter`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancoTwitter`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NULL,
  `nickname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nickname`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;

INSERT INTO usuario (nome, telefone, nickname, email, senha) VALUES ('Vitoria', '998766636', '@vickpaula', 'vitoriapaulafofa@ig.com', 'f5a9b85168ca26dfd25ad58175051e76'); -- vitoria123 --
INSERT INTO usuario (nome, telefone, nickname, email, senha) VALUES ('Marcio', '996973146', '@marcio', 'marcioamorosino@gmail.com', '224a954434c46a7734b0007d8b4363eb'); -- marcio123 --
INSERT INTO usuario (nome, telefone, nickname, email, senha) VALUES ('Gustavo', '979237694', '@guFiacador', 'gustavodantas@hotmail.com', ''); -- gustavo123 --

-- -----------------------------------------------------
-- Table `bancoTwitter`.`postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancoTwitter`.`postagem` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(140) NOT NULL,
  `dataEhora` DATETIME NOT NULL,
  `imagem` VARCHAR(45) NULL,
  `usuario_nickname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `usuario_nickname`),
  INDEX `fk_postagem_usuario_idx` (`usuario_nickname` ASC),
  CONSTRAINT `fk_postagem_usuario`
    FOREIGN KEY (`usuario_nickname`)
    REFERENCES `bancoTwitter`.`usuario` (`nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('Bom dia twitter!', '2019-05-29 23:59:59', '@vickpaula');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('Boa noite galera!', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('teste', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo1', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo2', '2019-04-16 23:59:59', '@vickpaula');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo3', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo4', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo5', '2019-04-16 23:59:59', '@vickpaula');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo6', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo7', '2019-04-16 23:59:59', '@guFiacador');
-- 10 --
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo8', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo9', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo10', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo11', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo12', '2019-04-16 23:59:59', '@vickpaula');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo13', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo14', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo15', '2019-04-16 23:59:59', '@vickpaula');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo16', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo17', '2019-04-16 23:59:59', '@marcio');
-- 20 --
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo18', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo19', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo20', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo21', '2019-04-16 23:59:59', '@vickpaula');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo22', '2019-04-16 23:59:59', '@vickpaula');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo23', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo24', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo25', '2019-04-16 23:59:59', '@marcio');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo26', '2019-04-16 23:59:59', '@guFiacador');
INSERT INTO postagem(texto, dataEhora, usuario_nickname) VALUES ('exemplo27', '2019-04-16 23:59:59', '@marcio');
-- 30 --


-- -----------------------------------------------------
-- Table `bancoTwitter`.`segue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancoTwitter`.`segue` (
  `segue` VARCHAR(45) NOT NULL,
  `seguido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`segue`, `seguido`),
  INDEX `fk_segue_usuario1_idx` (`seguido` ASC),
  CONSTRAINT `fk_seguidores_usuario1`
    FOREIGN KEY (`segue`)
    REFERENCES `bancoTwitter`.`usuario` (`nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_segue_usuario1`
    FOREIGN KEY (`seguido`)
    REFERENCES `bancoTwitter`.`usuario` (`nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO segue(segue, seguido) VALUES ('@guFiacador', '@vickpaula');
INSERT INTO segue(segue, seguido) VALUES ('@guFiacador', '@marcio');
INSERT INTO segue(segue, seguido) VALUES ('@marcio', '@vickpaula');
INSERT INTO segue(segue, seguido) VALUES ('@marcio', '@gufiacador');
INSERT INTO segue(segue, seguido) VALUES ('@vickpaula', '@gufiacador');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
