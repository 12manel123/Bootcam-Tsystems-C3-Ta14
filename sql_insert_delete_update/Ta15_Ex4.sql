create database GrandesAlmacenes;
use GrandesAlmacenes;

CREATE TABLE Productos (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL
);

CREATE TABLE Cajeros (
    codigo INT  PRIMARY KEY,
    nomApels VARCHAR(255) NOT NULL
);

CREATE TABLE Maquinas_Registradoras (
    codigo INT PRIMARY KEY,
    piso INT NOT NULL
);

CREATE TABLE Venta (
    cajero INT NOT NULL,
    maquina INT NOT NULL,
    producto INT NOT NULL,
    PRIMARY KEY (cajero, maquina, producto),
    FOREIGN KEY (cajero) REFERENCES Cajeros(codigo) ON DELETE CASCADE,
    FOREIGN KEY (maquina) REFERENCES Maquinas_Registradoras(codigo) ON DELETE CASCADE,
    FOREIGN KEY (producto) REFERENCES Productos(codigo) ON DELETE CASCADE
);

INSERT INTO Productos (codigo, nombre, precio) VALUES
(1, 'Producto A', 10),
(2, 'Producto B', 15),
(3, 'Producto C', 20),
(4, 'Producto D', 25),
(5, 'Producto E', 30),
(6, 'Producto F', 35),
(7, 'Producto G', 40),
(8, 'Producto H', 45),
(9, 'Producto I', 50),
(10, 'Producto J', 55);

INSERT INTO Cajeros (codigo, nomApels) VALUES
(101, 'Cajero 1'),
(102, 'Cajero 2'),
(103, 'Cajero 3'),
(104, 'Cajero 4'),
(105, 'Cajero 5'),
(106, 'Cajero 6'),
(107, 'Cajero 7'),
(108, 'Cajero 8'),
(109, 'Cajero 9'),
(110, 'Cajero 10');

INSERT INTO Maquinas_Registradoras (codigo, piso) VALUES
(201, 1),
(202, 2),
(203, 1),
(204, 3),
(205, 2),
(206, 1),
(207, 2),
(208, 3),
(209, 1),
(210, 2);

INSERT INTO Venta (cajero, maquina, producto) VALUES
(101, 201, 1),
(102, 202, 2),
(103, 203, 3),
(104, 204, 4),
(105, 205, 5),
(106, 206, 6),
(107, 207, 7),
(108, 208, 8),
(109, 209, 9),
(110, 210, 10);

UPDATE Productos SET precio = 12 WHERE codigo = 1;
DELETE FROM Productos WHERE codigo = 10;

UPDATE Cajeros SET nomApels = 'Cajero 11' WHERE codigo = 101;
DELETE FROM Cajeros WHERE codigo = 110;

UPDATE Maquinas_Registradoras SET piso = 2 WHERE codigo = 201;
DELETE FROM Maquinas_Registradoras WHERE codigo = 210;

UPDATE Venta SET producto = 3 WHERE cajero = 101 AND maquina = 201;
DELETE FROM Venta WHERE cajero = 105 AND maquina = 205;

