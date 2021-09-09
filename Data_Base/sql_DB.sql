--CREAMOS NUESTRA BASE DE DATOS 'tisg_DB'
CREATE DATABASE tisg_DB;

--INDICAMOS QUE BASE DE DATOS USAREMOS
USE tisg_db;

--CREAMOS LA TABLA 'Usuarios':
CREATE TABLE `tisg_db`.`usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) NOT NULL,
  `Telefono` int(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Pass` varchar(200) NOT NULL,
  `Confirmado` varchar(20) NOT NULL,
  `Codigo` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--CREAMOS LA TABLA 'Clientes':
CREATE TABLE `tisg_db`.`clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Telefono` int(30) NOT NULL,
  `Actitud` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--CREAMOS LA TABLA 'Pedidos'.
CREATE TABLE `tisg_db`.`pedidos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idClientes` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  `idProducto` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

--CREAMOS LA TABLA 'Productos'.
CREATE TABLE `tisg_db`.`productos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Producto` VARCHAR(100) NOT NULL,
  `Code` INT(30) NOT NULL,
  `Precio` DECIMAL(19.4) NOT NULL,
  `Cantidad` INT(100) NOT NULL;
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

--CREAMOS LA TABLA 'Campañas'
CREATE TABLE `tisg_db`.`Campañas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idPedidos` INT NOT NULL,
  `Nro_pedidos` INT NOT NULL,
  `Nro_clientes` INT NOT NULL,
  `Total` DECIMAL(19, 4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

--CREAMOS LA TABLA 'Consultoras'
CREATE TABLE `tisg_db`.`Consultoras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nombres` VARCHAR(100) NOT NULL,
  `Apellidos` VARCHAR(100) NOT NULL,
  `Email` VARCHAR(100) NULL,
  `Telefono` INT(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

--CREAREMOS LAS RELACIONES ENTRE TABLESPACE:

--Relacion de uno a uno entre tabla clientes y tabla pedidos:
ALTER TABLE
  pedidos
ADD
  CONSTRAINT fk_idClientes FOREIGN KEY (idClientes) 
  REFERENCES clientes (id) on UPDATE CASCADE;

--Relacion de uno a muchos entre tabla campañas y tabla pedidos
ALTER TABLE
  campañas
ADD
  CONSTRAINT fk_idPedidos FOREIGN KEY (idPedidos) 
  REFERENCES pedidos (id) ON UPDATE CASCADE;

--Relacion de uno a muchos entre tabla pedidos y tabla productos
ALTER TABLE
  pedidos
ADD
  CONSTRAINT fk_idProductos FOREIGN KEY (idProducto) 
  REFERENCES productos (id) on UPDATE CASCADE;