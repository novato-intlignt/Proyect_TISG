USE tisg_DB;
CREATE TABLE `tisg_DB`.`Usuarios` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `Nombres` VARCHAR(50) NOT NULL,
    `Username` VARCHAR(30) NULL,
    `Email` VARCHAR(30) NOT NULL,
    `Pass` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `tisg_DB`.`Clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nombres` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Telefono` INT(30) NOT NULL,
  `Actitud` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;
