--CREANDO BASE DE DATOS
CREATE DATABASE Ventas_Tech_DB;
USE Ventas_Tech_DB

-- DROP TABLES 
DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;

-- CREANDO TABLAS
-- TABLA categorias

CREATE TABLE categorias(
    id_categoria int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nombre_categoria varchar(50) NOT NULL,
    descripcion varchar(200)
);

-- TABLA clientes

CREATE TABLE clientes(
    id_cliente int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nombre_cliente varchar(100) NOT NULL,
    email varchar(100) UNIQUE,
    ciudad varchar(50),
    fecha_registro date NOT NULL
);

-- TABLA productos

CREATE TABLE productos(
    id_producto int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nombre_producto varchar(100) NOT NULL,
    id_categoria int NOT NULL FOREIGN KEY REFERENCES categorias(id_categoria),
    precio decimal(10,2) NOT NULL,
    stock int DEFAULT 0,
    activo TINYINT DEFAULT 1
);

-- TABLA ventas

CREATE TABLE ventas(
    id_ventas int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    id_cliente int NOT NULL FOREIGN KEY REFERENCES clientes(id_cliente),
    id_producto int NOT NULL FOREIGN KEY REFERENCES productos(id_producto),
    cantidad int NOT NULL,
    precio_unitario decimal(10,2) NOT NULL,
    fecha_venta date NOT NULL
);

-- INSERTANDO DATOS
-- DATOS DE CATEGORIA

SELECT * FROM categorias;

INSERT INTO categorias (nombre_categoria, descripcion)
VALUES
    ('Computación', 'Laptops, PCs y monitores'),
    ('Accesorios', 'Periféricos y complementos'),
    ('Audio', 'Auriculares y parlantes'),
    ('Almacenamiento', 'Discos y memorias');

-- DATOS DE CLIENTES

SELECT * FROM clientes 

INSERT INTO CLIENTES (nombre_cliente, email, ciudad, fecha_registro)
VALUES
    ('María López', 'maria@mail.com', 'Buenos Aires', '2024-01-05'),
    ('Carlos Ruiz', 'carlos@mail.com', 'Córdoba', '2024-01-10'),
    ('Ana Gómez', 'ana@mail.com', 'Rosario', '2024-02-01'),
    ('Pedro Sanz', 'pedro@mail.com', 'Mendoza', '2024-02-15'),
    ('Laura Torres', 'laura@mail.com', 'Tucumán', '2024-03-01');

-- DATOS DE PRODUCTOS

SELECT * FROM productos

INSERT INTO productos (nombre_producto, id_categoria, precio, stock, activo)
VALUES
    ('Laptop Pro 15', 1, 1200.00, 15, 1),
    ('Mouse Inalámbrico', 2, 28.00, 80, 1),
    ('Monitor 4K 27"', 1, 450.00, 12, 1),
    ('Auriculares BT Pro', 3, 120.00, 35, 1),
    ('SSD Externo 1TB', 4, 130.00, 18, 1),
    ('Teclado Mecánico', 2, 95.00, 40, 1);

-- DATOS DE VENTAS

SELECT *FROM ventas

INSERT INTO ventas (id_cliente, id_producto, cantidad, precio_unitario, fecha_venta)
VALUES
    (1, 1, 2, 1200.00, '2024-03-05'),
    (2, 2, 5,   28.00, '2024-03-06'),
    (3, 3, 1,  450.00, '2024-03-07'),
    (1, 4, 2,  120.00, '2024-03-08'),
    (4, 5, 3,  130.00, '2024-03-10'),
    (2, 6, 4,   95.00, '2024-03-11'),
    (5, 1, 1, 1200.00, '2024-03-12'),
    (3, 2, 8,   28.00, '2024-03-13'),
    (4, 4, 1,  120.00, '2024-03-14'),
    (5, 3, 2,  450.00, '2024-03-15');

-- SIN ERRORES POR EL MOMENTO.