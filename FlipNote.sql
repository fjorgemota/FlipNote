SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `flipnote` DEFAULT CHARACTER SET utf8 ;
USE `flipnote` ;

-- -----------------------------------------------------
-- Table `flipnote`.`aluno`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `flipnote`.`aluno` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(200) NOT NULL ,
  `senha` VARCHAR(41) NOT NULL ,
  `email` VARCHAR(200) NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `email` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `flipnote`.`grupo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `flipnote`.`grupo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(200) NOT NULL ,
  `descricao` TEXT NULL DEFAULT NULL ,
  `aluno` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_grupo_aluno1` (`aluno` ASC) ,
  CONSTRAINT `fk_grupo_aluno1`
    FOREIGN KEY (`aluno` )
    REFERENCES `flipnote`.`aluno` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `flipnote`.`anotacao`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `flipnote`.`anotacao` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `titulo` VARCHAR(50) NOT NULL ,
  `texto` TEXT NULL DEFAULT NULL ,
  `notificacao` DATETIME NULL DEFAULT NULL ,
  `aluno` INT(11) NOT NULL ,
  `grupo` INT(11) NULL ,
  PRIMARY KEY (`id`, `aluno`) ,
  INDEX `fk_anotacao_aluno1` (`aluno` ASC) ,
  INDEX `fk_anotacao_grupo1` (`grupo` ASC) ,
  CONSTRAINT `fk_anotacao_aluno1`
    FOREIGN KEY (`aluno` )
    REFERENCES `flipnote`.`aluno` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_anotacao_grupo1`
    FOREIGN KEY (`grupo` )
    REFERENCES `flipnote`.`grupo` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_romanian_ci;


-- -----------------------------------------------------
-- Table `flipnote`.`materia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `flipnote`.`materia` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(100) NOT NULL ,
  `professor` VARCHAR(100) NULL DEFAULT NULL ,
  `grupo` INT(11) NULL ,
  `aluno` INT(11) NOT NULL ,
  PRIMARY KEY (`id`, `aluno`) ,
  INDEX `fk_materia_grupo1` (`grupo` ASC) ,
  INDEX `fk_materia_aluno1` (`aluno` ASC) ,
  CONSTRAINT `fk_materia_grupo1`
    FOREIGN KEY (`grupo` )
    REFERENCES `flipnote`.`grupo` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_materia_aluno1`
    FOREIGN KEY (`aluno` )
    REFERENCES `flipnote`.`aluno` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `flipnote`.`prova`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `flipnote`.`prova` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `materia` INT(10) NOT NULL ,
  `data` DATETIME NOT NULL ,
  `descricao` TEXT NOT NULL ,
  `notificacao` DATETIME NULL DEFAULT NULL ,
  `nota` FLOAT NULL DEFAULT NULL ,
  `aluno` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_prova_materia1` (`materia` ASC) ,
  INDEX `fk_prova_aluno1` (`aluno` ASC) ,
  CONSTRAINT `fk_prova_materia1`
    FOREIGN KEY (`materia` )
    REFERENCES `flipnote`.`materia` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_prova_aluno1`
    FOREIGN KEY (`aluno` )
    REFERENCES `flipnote`.`aluno` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `flipnote`.`trabalho`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `flipnote`.`trabalho` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `materia` INT(10) NOT NULL ,
  `data` DATETIME NOT NULL ,
  `descricao` TEXT NOT NULL ,
  `notificacao` DATETIME NULL DEFAULT NULL ,
  `nota` FLOAT NULL DEFAULT NULL ,
  `aluno` INT(11) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_trabalho_materia1` (`materia` ASC) ,
  INDEX `fk_trabalho_aluno1` (`aluno` ASC) ,
  CONSTRAINT `fk_trabalho_materia1`
    FOREIGN KEY (`materia` )
    REFERENCES `flipnote`.`materia` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trabalho_aluno1`
    FOREIGN KEY (`aluno` )
    REFERENCES `flipnote`.`aluno` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = COMPACT;


-- -----------------------------------------------------
-- Table `flipnote`.`grupo_aluno`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `flipnote`.`grupo_aluno` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `aluno` INT NOT NULL ,
  `grupo` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_aluno_has_grupo_grupo1` (`grupo` ASC) ,
  INDEX `fk_aluno_has_grupo_aluno` (`aluno` ASC) ,
  CONSTRAINT `fk_aluno_has_grupo_aluno`
    FOREIGN KEY (`aluno` )
    REFERENCES `flipnote`.`aluno` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_has_grupo_grupo1`
    FOREIGN KEY (`grupo` )
    REFERENCES `flipnote`.`grupo` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
