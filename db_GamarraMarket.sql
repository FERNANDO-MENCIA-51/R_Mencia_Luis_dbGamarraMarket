CREATE DATABASE  db_gamarramarket;
USE db_gamarramarket;

-- Tabla cliente
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento CHAR(3),
    numero_documento CHAR(20),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    email VARCHAR(80),
    celular CHAR(9),
    fecha_nacimiento DATE,
    activo BOOLEAN
);

-- Tabla vendedor
CREATE TABLE vendedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento CHAR(3),
    numero_documento CHAR(20),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    salario DECIMAL(8,2),
    celular CHAR(9),
    email VARCHAR(80),
    archivo BOOLEAN
);

-- Tabla prenda
CREATE TABLE prenda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(80),
    marca VARCHAR(30),
    talla VARCHAR(10),
    precio DECIMAL(6,2),
    activo BOOLEAN
);

-- Tabla venta
CREATE TABLE venta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_hora TIMESTAMP,
    activo BOOLEAN,
    cliente_id INT,
    vendedor_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (vendedor_id) REFERENCES vendedor(id)
);

-- Tabla venta_detalle
CREATE TABLE venta_detalle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT,
    venta_id INT,
    prenda_id INT,
    FOREIGN KEY (venta_id) REFERENCES venta(id),
    FOREIGN KEY (prenda_id) REFERENCES prenda(id)
);

-- Datos para la tabla cliente
INSERT INTO cliente (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo) VALUES
('DNI', '12345678', 'Juan', 'Pérez', 'juan.perez@example.com', '987654321', '1990-01-01', TRUE),
('DNI', '87654321', 'Ana', 'Gómez', 'ana.gomez@example.com', '912345678', '1985-05-15', TRUE),
('DNI', '11223344', 'Luis', 'Martínez', 'luis.martinez@example.com', '923456789', '1992-09-20', FALSE),
('DNI', '44332211', 'María', 'Ramos', 'maria.ramos@example.com', '934567890', '1988-03-11', TRUE),
('DNI', '55667788', 'Carlos', 'Hernández', 'carlos.hernandez@example.com', '945678901', '1995-12-25', TRUE);

-- Datos para la tabla vendedor
INSERT INTO vendedor (tipo_documento, numero_documento, nombres, apellidos, salario, celular, email, archivo) VALUES
('DNI', '33445566', 'Pedro', 'Jiménez', 2500.00, '956789012', 'pedro.jimenez@example.com', TRUE),
('DNI', '77889900', 'Laura', 'García', 3000.00, '967890123', 'laura.garcia@example.com', FALSE),
('DNI', '11224455', 'Jorge', 'Lopez', 2800.00, '978901234', 'jorge.lopez@example.com', TRUE),
('DNI', '55667799', 'Lucía', 'Ortega', 2900.00, '989012345', 'lucia.ortega@example.com', TRUE),
('DNI', '99001122', 'Fernando', 'Ruiz', 2600.00, '990123456', 'fernando.ruiz@example.com', FALSE);

-- Datos para la tabla prenda
INSERT INTO prenda (descripcion, marca, talla, precio, activo) VALUES
('Camiseta básica', 'Nike', 'M', 29.99, TRUE),
('Pantalón deportivo', 'Adidas', 'L', 49.99, TRUE),
('Chaqueta impermeable', 'Puma', 'S', 89.99, FALSE),
('Zapatos running', 'Reebok', '42', 75.50, TRUE),
('Sudadera con capucha', 'Under Armour', 'XL', 39.99, TRUE);

-- Datos para la tabla venta relacion con cliente y vendedor 
INSERT INTO venta (fecha_hora, activo, cliente_id, vendedor_id) VALUES
(NOW(), TRUE, 1, 1),
(NOW(), TRUE, 2, 2),
(NOW(), FALSE, 3, 3),
(NOW(), TRUE, 4, 4),
(NOW(), FALSE, 5, 5);

-- Datos para la tabla venta_detalle relacion con venta y prenda
INSERT INTO venta_detalle (cantidad, venta_id, prenda_id) VALUES
(2, 1, 1),
(1, 1, 2),
(3, 2, 3),
(1, 3, 4),
(2, 4, 5);

SELECT * FROM cliente;
SELECT * FROM vendedor;
SELECT * FROM prenda;
SELECT * FROM venta;
SELECT * FROM venta_detalle;
