-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pokemon
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pokemon
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema pokemon
-- -----------------------------------------------------
USE `pokemon` ;

-- -----------------------------------------------------
-- Table `pokemon`.`pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokemonpokemonpokemon`.`pokemon` (
  `number` CHAR(4) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `type1` VARCHAR(15) NOT NULL,
  `type2` VARCHAR(15) NOT NULL,
  `total` INT NOT NULL,
  `hp` INT NOT NULL,
  `attack` INT NOT NULL,
  `defense` INT NOT NULL,
  `sp_attack` INT NOT NULL,
  `sp_defense` INT NOT NULL,
  `speed` INT NOT NULL,
  `generation` INT NOT NULL,
  `legendary` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`number`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
