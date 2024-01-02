-- MySQL Script generated by MySQL Workbench
-- Thu Dec 21 00:00:06 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema quiz
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema quiz
-- -----------------------------------------------------
DROP SCHEMA quiz;
CREATE SCHEMA IF NOT EXISTS `quiz` DEFAULT CHARACTER SET utf8 ;
USE `quiz` ;

-- -----------------------------------------------------
-- Table `quiz`.`indirizzo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`indirizzo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `paese` VARCHAR(45) NOT NULL,
  `citta` VARCHAR(45) NOT NULL,
  `via` VARCHAR(45) NOT NULL,
  `numero_civico` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`utente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`utente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cognome` VARCHAR(45) NOT NULL,
  `data_nascita` DATE NOT NULL,
  `numero_telefono` BIGINT NOT NULL,
  `segnalibro` INT NULL,
  `indirizzo_id` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `numero_telefono_UNIQUE` (`numero_telefono` ASC) VISIBLE,
  INDEX `fk_utente_indirizzo1_idx` (`indirizzo_id` ASC) VISIBLE,
  CONSTRAINT `fk_utente_indirizzo1`
    FOREIGN KEY (`indirizzo_id`)
    REFERENCES `quiz`.`indirizzo` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`linguaggio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`linguaggio` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`capitolo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`capitolo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `linguaggio_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_capitolo_linguaggio1_idx` (`linguaggio_id` ASC) VISIBLE,
  CONSTRAINT `fk_capitolo_linguaggio1`
    FOREIGN KEY (`linguaggio_id`)
    REFERENCES `quiz`.`linguaggio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`quiz_vero_falso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`quiz_vero_falso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `domanda` VARCHAR(1000) NOT NULL,
  `bool` TINYINT NOT NULL,
  `capitolo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_quiz_vero_falso_capitolo1_idx` (`capitolo_id` ASC) VISIBLE,
  CONSTRAINT `fk_quiz_vero_falso_capitolo1`
    FOREIGN KEY (`capitolo_id`)
    REFERENCES `quiz`.`capitolo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`quiz_multiplo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`quiz_multiplo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `domanda` VARCHAR(1000) NOT NULL,
  `corretta` VARCHAR(500) NOT NULL,
  `errore1` VARCHAR(500) NOT NULL,
  `errore2` VARCHAR(500) NOT NULL,
  `capitolo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_quiz_multiplo_capitolo1_idx` (`capitolo_id` ASC) VISIBLE,
  CONSTRAINT `fk_quiz_multiplo_capitolo1`
    FOREIGN KEY (`capitolo_id`)
    REFERENCES `quiz`.`capitolo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`badge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`badge` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`utente_has_badge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`utente_has_badge` (
  `utente_id` INT NOT NULL,
  `badge_id` INT NOT NULL,
  `data_conseguimento` DATE NULL,
  PRIMARY KEY (`utente_id`, `badge_id`),
  INDEX `fk_utente_has_badge_badge1_idx` (`badge_id` ASC) VISIBLE,
  INDEX `fk_utente_has_badge_utente1_idx` (`utente_id` ASC) VISIBLE,
  CONSTRAINT `fk_utente_has_badge_utente1`
    FOREIGN KEY (`utente_id`)
    REFERENCES `quiz`.`utente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_utente_has_badge_badge1`
    FOREIGN KEY (`badge_id`)
    REFERENCES `quiz`.`badge` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`contenuto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`contenuto` (
  `id` INT AUTO_INCREMENT,
  `contenuto` VARCHAR(1000) NOT NULL,
  `capitolo_id` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL  CHECK (tipo IN ('spazio', 'paragrafo', 'titolo', 'immagine')),
  PRIMARY KEY (`id`),
  INDEX `fk_contenuto_capitolo1_idx` (`capitolo_id` ASC) VISIBLE,
  CONSTRAINT `fk_contenuto_capitolo1`
    FOREIGN KEY (`capitolo_id`)
    REFERENCES `quiz`.`capitolo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`quiz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`quiz` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quiz`.`utente_has_quiz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quiz`.`utente_has_quiz` (
  `utente_id` INT NOT NULL,
  `quiz_id` INT NOT NULL,
  `data_conseguimento` DATE NULL,
  PRIMARY KEY (`utente_id`, `quiz_id`),
  INDEX `fk_utente_has_quiz_quiz1_idx` (`quiz_id` ASC) VISIBLE,
  INDEX `fk_utente_has_quiz_utente1_idx` (`utente_id` ASC) VISIBLE
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS contatti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    oggetto VARCHAR(50) NOT NULL,
    messaggio TEXT NOT NULL,
    ore_invio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS contatti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    oggetto VARCHAR(50) NOT NULL,
    messaggio TEXT NOT NULL,
    ore_invio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

      
	