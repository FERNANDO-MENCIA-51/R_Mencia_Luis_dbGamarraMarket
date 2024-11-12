DROP DATABASE  dbGamarraMarket;
CREATE DATABASE dbGamarraMarket;
USE dbGamarraMarket;

CREATE TABLE CLIENTE (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_documento CHAR(3) NOT NULL,
    numero_documento CHAR(15) NOT NULL UNIQUE,
    nombres VARCHAR(60) NOT NULL,
    apellidos VARCHAR(90) NOT NULL,
    email VARCHAR(80),
    celular CHAR(9),
    fecha_nacimiento DATE,
    activo BOOLEAN DEFAULT TRUE
);

-- datos del cliente
INSERT INTO CLIENTE (id, tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo) VALUES
(1, 'DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@empresa.com', '994856103', '1970-02-10', 1),
(2, 'DNI', '45781323', 'Alicia', 'García Campos', NULL, NULL, '1980-03-20', 1),
(3, 'CNE', '31548922', 'Juana', 'Avila Chumpitaz', 'juana.avila@gmail.com', '923568741', '1986-06-07', 1),
(4, 'DNI', '12211635', 'Ana', 'Enriquez Flores', 'ana.enriquez@empresa.com', NULL, '1990-12-03', 1),
(5, 'CNE', '087141589', 'Claudia', 'Perales Ortiz', 'claudia.perales@yahoo.com', '997845652', '1981-07-05', 1),
(6, 'CNE', '223778456', 'Mario', 'Barrios Martínez', 'mario.barrios@outlook.com', '995624871', '1974-06-21', 1),
(7, 'DNI', '175258564', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '953257643', '1990-05-31', 1),
(8, 'CNE', '153352785', 'Alejandro', 'Jimenez Huapaya', NULL, '941352563', '1985-11-01', 1),
(9, 'DNI', '153525875', 'Claudia', 'Marquez Litano', 'claudia.marquez@gmail.com', NULL, '1991-10-01', 1),
(10, 'DNI', '471255658', 'Mario', 'Rodríguez Quispe', 'mario.rodriguez@outlook.com', '912665287', '1983-04-12', 1),
(11, 'DNI', '439552514', 'Luisa', 'Guerra Ibarra', NULL, '974122536', '1988-12-01', 1),
(12, 'CNE', '530254785', 'Candela', 'Valenzuela Patiño', 'pedro.candela@gmail.com', '971485215', '1976-05-03', 1),
(13, 'DNI', '53298147', 'Angel M.', 'Rojas Ávila', 'angel.rojas@outlook.com', NULL, '1975-03-05', 1),
(14, 'DNI', '45321957', 'Hilario', 'Perez Huapaya', 'hilario.perez@gmail.com', '985135542', '1983-02-14', 1),
(15, 'DNI', '558963219', 'Octavio M.', 'Marquez Osorio', NULL, NULL, '2004-02-23', 1),
(16, 'CNE', '479562153', 'Eustaquio A.', 'Vasquez Zavala', 'manolo.vasquez@outlook.es', '966223141', '2009-09-05', 1),
(17, 'DNI', '473215784', 'Geno A.', 'Vasquez Ortíz', 'genoveva.ortiz@outlook.es', NULL, '2009-09-05', 1),
(18, 'DNI', '499522174', 'Oscar C.', 'Quiroz Zavala', NULL, '982231415', '2004-10-02', 1),
(19, 'CNE', '004221573', 'Verónica', 'Romero Vargas', 'veronica.romero@yahoo.com', '989554613', '2004-08-25', 1),
(20, 'DNI', '00256341', 'Eliseo', 'Prada Ortíz', 'eliseo.prada@yahoo.com', NULL, '2004-09-15', 1);


CREATE TABLE VENDEDOR (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_documento CHAR(3) NOT NULL,
    numero_documento CHAR(15) NOT NULL UNIQUE,
    nombres VARCHAR(60) NOT NULL,
    apellidos VARCHAR(90) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    celular CHAR(9),
    email VARCHAR(80),
    activo BOOLEAN DEFAULT TRUE
);

-- datos de vendedor

INSERT INTO VENDEDOR (id, tipo_documento, numero_documento, nombres, apellidos, salario, celular, email, activo) VALUES
(1, 'DNI', '85471236', 'Enrique', 'Pérez Manco', 1500.00, '96521873', 'enrique.perez@outlook.com', 1),
(2, 'DNI', '47259137', 'Sofía', 'Ávila Solís', 1350.00, NULL, NULL, 1),
(3, 'DNI', '61542980', 'Marcela', 'Napaico Cama', 1500.00, '965874357', 'marcela.napaico@gmail.com', 1),
(4, 'CNE', '742526140', 'Carmelo', 'Rodríguez Chauca', 1550.00, NULL, 'carmelo.rodriguez@yahoo.com', 1);


CREATE TABLE PRENDA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(90) NOT NULL,
    marca VARCHAR(60) NOT NULL,
    cantidad INT NOT NULL,
    talla VARCHAR(10) NOT NULL,
    precio DECIMAL(8,2) NOT NULL,
    activo BOOLEAN DEFAULT TRUE
);

-- datos de prenda

INSERT INTO PRENDA (id, descripcion, marca, cantidad, talla, precio, activo) VALUES
(1, 'Pantalon Jeans', 'Levis', 60, '28', 65.80, 1),
(2, 'Camisa manga corta', 'Adams', 75, '16', 55.00, 1),
(3, 'Polo sport', 'Australia', 100, '16', 40.00, 1),
(4, 'Camisa manga larga', 'Newport', 180, '16', 55.00, 1),
(5, 'Pijama para caballero', 'Adams', 80, '18', 79.50, 1),
(6, 'Corbata', 'Maxwell', 160, '14', 14.50, 1),
(7, 'Pijama para dama', 'Adams', 120, '16', 79.50, 1),
(8, 'Camisa sport', 'Australia', 200, '20', 65.00, 1),
(9, 'Camisa Sport', 'John Holden', 85, '18', 55.00, 1),
(10, 'Shorts Jeans', 'Pepe Jeans', 185, '28', 77.20, 1);


CREATE TABLE VENTA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    activo BOOLEAN DEFAULT TRUE,
    cliente_id INT NOT NULL,
    vendedor_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES CLIENTE(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (vendedor_id) REFERENCES VENDEDOR(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- datos de venta

INSERT INTO VENTA (id, fecha_hora, cliente_id, vendedor_id, activo) VALUES
(1, '2023-05-01 19:04:08', 4, 1, 1),
(2, '2023-05-01 19:04:08', 6, 3, 1),
(3, '2023-05-01 19:04:08', 10, 1, 1),
(4, '2023-05-01 19:04:08', 18, 4, 1);


CREATE TABLE VENTA_DETALLE (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cantidad INT NOT NULL,
    venta_id INT NOT NULL,
    prenda_id INT NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES VENTA(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (prenda_id) REFERENCES PRENDA(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- datos de venta detalle

INSERT INTO VENTA_DETALLE (id, venta_id, prenda_id, cantidad) VALUES
(1, 1, 3, 7),
(2, 1, 6, 4),
(3, 2, 7, 2),
(4, 2, 3, 5),
(5, 2, 4, 1),
(6, 3, 3, 3),
(7, 3, 8, 7),
(8, 3, 5, 4),
(9, 4, 6, 6),
(10, 4, 5, 3);

-- 9. Actualizar el número de celular de Mario Rodríguez Mayo

UPDATE CLIENTE
SET celular = '922881101'
WHERE tipo_documento = 'CNE' AND numero_documento = '465772587';


-- 10. Agregar número de celular al cliente con DNI 53298147

UPDATE CLIENTE
SET celular = '977226604'
WHERE tipo_documento = 'DNI' AND numero_documento = '53298147';


--  11. Eliminar lógicamente los clientes con DNI 11453265, 74142585 y 49985471
UPDATE CLIENTE
SET activo = 0
WHERE numero_documento IN ('11453265', '74142585', '49985471');

-- 12. Limpiar el campo de celular para los clientes con DNI 87952514, 55869321 y 74142585

UPDATE CLIENTE
SET celular = NULL
WHERE numero_documento IN ('87952514', '55869321', '74142585');

-- 13. Reactivar el cliente Oscar César Quiroz Zavala y
--  actualizar su correo electrónico

UPDATE CLIENTE
SET activo = 1, email = 'oscar.quiroz@yahoo.es'
WHERE tipo_documento = 'DNI' AND numero_documento = '49985471';

-- 14. Agregar los datos de los siguientes clientes y vendedor

INSERT INTO CLIENTE (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo) VALUES
('DNI', '882325643', 'Gustavo Tadeo', 'Quispe Solorzano', 'gustavo.quispe@gmail.com', NULL, '2001-10-13', 1),
('DNI', '15735995', 'Daniela', 'Salas Vargas', 'daniela.salas@outlook.com', NULL, '1993-11-05', 1),
('DNI', '76314855', 'Mitin Gregorio', 'Vásquez Turraizaga', 'mitin.gregorio@yahoo.es', '974815323', '2004-06-22', 1),
('DNI', '84720591', 'Verónica', 'Arangua Araujo', 'veronica.arangua@outlook.com', NULL, '1988-11-03', 1),
('DNI', '11228514', 'Felicha', 'Marroquin Candela', 'felicha.marroquin@outlook.com', '966014272', '2006-06-05', 1),
('DNI', '51436952', 'Luhana', 'Ortiz Rodríguez', NULL, '960405017', '1980-11-25', 1);

INSERT INTO VENDEDOR (tipo_documento, numero_documento, nombres, apellidos, salario, celular, email, activo) VALUES
('DNI', '47259136', 'Sofía', 'Ávila Solís', 1350.00, NULL, NULL, 1);

-- 15. Actualizar el precio del polo sport de marca Australia a 45.00

UPDATE PRENDA
SET precio = 45.00
WHERE id = 3;

-- 16. Cambiar el nombre de la prenda "Corbata" por "Corbata Michi elegante"
UPDATE PRENDA
SET descripcion = 'Corbata Michi elegante'
WHERE id = 6;


-- 17. Eliminar físicamente las prendas "Camisa manga corta" y "Camisa Sport"

SELECT id, descripcion FROM PRENDA
WHERE descripcion IN ('Camisa manga corta', 'Camisa Sport');


-- 18. Eliminar físicamente a la vendedora Marcela Napaico Cama

DELETE FROM VENDEDOR
WHERE nombres = 'Marcela' AND apellidos = 'Napaico Cama';


-- 19. Eliminar físicamente los clientes 
-- con números de documentos 47142536 y 77889955

DELETE FROM CLIENTE
WHERE numero_documento IN ('47142536', '77889955');

-- 20. Eliminar todos los clientes nacidos en el año 1980

DELETE FROM CLIENTE
WHERE YEAR(fecha_nacimiento) = 1980;


/* ------------------------------------------------------------------------ */
ALTER TABLE VENTA
ADD CONSTRAINT fk_cliente_venta
FOREIGN KEY (cliente_id) REFERENCES CLIENTE(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE VENTA
ADD CONSTRAINT fk_vendedor_venta
FOREIGN KEY (vendedor_id) REFERENCES VENDEDOR(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE VENTA_DETALLE
ADD CONSTRAINT fk_venta_venta_detalle
FOREIGN KEY (venta_id) REFERENCES VENTA(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE VENTA_DETALLE
ADD CONSTRAINT fk_prenda_venta_detalle
FOREIGN KEY (prenda_id) REFERENCES PRENDA(id) ON DELETE CASCADE ON UPDATE CASCADE;


SELECT 
    kcu.CONSTRAINT_NAME AS 'Nombre de Relación',
    kcu.REFERENCED_TABLE_NAME AS 'Tabla Padre',
    kcu.REFERENCED_COLUMN_NAME AS 'Primary Key',
    kcu.TABLE_NAME AS 'Tabla Hija',
    kcu.COLUMN_NAME AS 'Foreign Key'
FROM 
    information_schema.KEY_COLUMN_USAGE AS kcu
WHERE 
    kcu.TABLE_SCHEMA = 'dbGamarraMarket' 
    AND kcu.REFERENCED_TABLE_NAME IS NOT NULL;
    
SHOW TABLES;


DESCRIBE CLIENTE;
DESCRIBE VENDEDOR;
DESCRIBE PRENDA;
DESCRIBE VENTA;