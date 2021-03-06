-- MySQL Script generated by MySQL Workbench
-- Mon Dec 30 15:11:49 2019
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
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `Заказы`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Заказы` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Заказы` (
  `Номер заказа` INT NOT NULL AUTO_INCREMENT,
  `Дата заказа` DATE NOT NULL,
  `Код сотрудника` INT NOT NULL,
  `Код клиента` INT NOT NULL,
  `Серийный номер` INT NOT NULL,
  `Дата завершения` DATE NOT NULL,
  PRIMARY KEY (`Номер заказа`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Клиенты`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Клиенты` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Клиенты` (
  `Код клиента` INT NULL AUTO_INCREMENT,
  `ФИО` VARCHAR(45) NOT NULL,
  `Адес счета` VARCHAR(45) NOT NULL,
  `Город` VARCHAR(45) NOT NULL,
  `Телефон` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Код клиента`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Модели`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Модели` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Модели` (
  `Модель` INT NOT NULL AUTO_INCREMENT,
  `Описание` VARCHAR(45) NOT NULL,
  `Год разработки` DATE NOT NULL,
  PRIMARY KEY (`Модель`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Сотрудники`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Сотрудники` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Сотрудники` (
  `Код сотрудника` INT NOT NULL AUTO_INCREMENT,
  `Имя` VARCHAR(45) NOT NULL,
  `Фамилия` VARCHAR(45) NOT NULL,
  `Должность` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Код сотрудника`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Товары`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Товары` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Товары` (
  `Серийный номер` INT NOT NULL AUTO_INCREMENT,
  `Модель` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Серийный номер`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Data for table `Заказы`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `Заказы` (`Номер заказа`, `Дата заказа`, `Код сотрудника`, `Код клиента`, `Серийный номер`, `Дата завершения`) VALUES (1, '20.12.2019', 1, 1, 1, '21.12.2019');
INSERT INTO `Заказы` (`Номер заказа`, `Дата заказа`, `Код сотрудника`, `Код клиента`, `Серийный номер`, `Дата завершения`) VALUES (2, '22.12.2019', 2, 2, 2, '23.12.2019');
INSERT INTO `Заказы` (`Номер заказа`, `Дата заказа`, `Код сотрудника`, `Код клиента`, `Серийный номер`, `Дата завершения`) VALUES (3, '24.12.2019', 3, 3, 3, '25.12.2019');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Клиенты`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `Клиенты` (`Код клиента`, `ФИО`, `Адес счета`, `Город`, `Телефон`) VALUES (1, 'Рытиков Н.А.', '01010101', 'Мядель', '+375 (33) 555-44-33');
INSERT INTO `Клиенты` (`Код клиента`, `ФИО`, `Адес счета`, `Город`, `Телефон`) VALUES (2, 'Лугов А.П.', '02016097', 'Рогочёв', '+375 (44) 777-88-99');
INSERT INTO `Клиенты` (`Код клиента`, `ФИО`, `Адес счета`, `Город`, `Телефон`) VALUES (3, 'Петрушин М.Р.', '02165413', 'Пинск', '+375 (25) 252-52-25');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Модели`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `Модели` (`Модель`, `Описание`, `Год разработки`) VALUES (1, 'Чугун', '1970');
INSERT INTO `Модели` (`Модель`, `Описание`, `Год разработки`) VALUES (2, 'Сталь', '1979');
INSERT INTO `Модели` (`Модель`, `Описание`, `Год разработки`) VALUES (3, 'Стекловолокно', '2008');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Сотрудники`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `Сотрудники` (`Код сотрудника`, `Имя`, `Фамилия`, `Должность`) VALUES (1, 'Пётр', 'Цыбин', 'Электрик');
INSERT INTO `Сотрудники` (`Код сотрудника`, `Имя`, `Фамилия`, `Должность`) VALUES (2, 'Виталий', 'Земчёнок', 'Плотник');
INSERT INTO `Сотрудники` (`Код сотрудника`, `Имя`, `Фамилия`, `Должность`) VALUES (3, 'Юрий', 'Абрамов', 'Сантехник');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Товары`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `Товары` (`Серийный номер`, `Модель`) VALUES (1, 'Криворожсталь');
INSERT INTO `Товары` (`Серийный номер`, `Модель`) VALUES (2, 'Кировсксталь');
INSERT INTO `Товары` (`Серийный номер`, `Модель`) VALUES (3, 'Киевсталь');

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
