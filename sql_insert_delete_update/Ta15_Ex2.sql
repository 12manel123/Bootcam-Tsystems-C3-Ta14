create database ProvedoresPiezas;
use ProvedoresPiezas;

CREATE TABLE Piezas (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Proveedores (
    id CHAR(4) PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Suministra (
    codigoPieza INT,
    idProveedor CHAR(4),
    precio INT,
    PRIMARY KEY (codigoPieza, idProveedor),
    FOREIGN KEY (codigoPieza) REFERENCES Piezas(codigo),
    FOREIGN KEY (idProveedor) REFERENCES Proveedores(id)
);

INSERT INTO Piezas (codigo, nombre) VALUES
(1, 'Pieza A'),
(2, 'Pieza B'),
(3, 'Pieza C'),
(4, 'Pieza D'),
(5, 'Pieza E'),
(6, 'Pieza F'),
(7, 'Pieza G'),
(8, 'Pieza H'),
(9, 'Pieza I'),
(10, 'Pieza J');


INSERT INTO Proveedores (id, nombre) VALUES
('P1', 'Proveedor 1'),
('P2', 'Proveedor 2'),
('P3', 'Proveedor 3'),
('P4', 'Proveedor 4'),
('P5', 'Proveedor 5'),
('P6', 'Proveedor 6'),
('P7', 'Proveedor 7'),
('P8', 'Proveedor 8'),
('P9', 'Proveedor 9'),
('P10', 'Proveedor 10');


INSERT INTO Suministra (codigoPieza, idProveedor, precio) VALUES
(1, 'P1', 100),
(1, 'P2', 110),
(2, 'P1', 120),
(2, 'P3', 130),
(3, 'P2', 140),
(4, 'P4', 150),
(4, 'P5', 160),
(5, 'P3', 170),
(5, 'P6', 180),
(6, 'P5', 190);

UPDATE Piezas SET nombre = 'Pieza A Modificada' WHERE codigo = 1;
DELETE FROM Piezas WHERE codigo = 10;

UPDATE Proveedores SET nombre = 'Proveedor 1 Modificado' WHERE id = 'P1';
DELETE FROM Proveedores WHERE id = 'P10';

UPDATE Suministra SET precio = 145 WHERE codigoPieza = 3 AND idProveedor = 'P2';
DELETE FROM Suministra WHERE codigoPieza = 4 AND idProveedor = 'P4';

SELECT * FROM Piezas;
SELECT * FROM Proveedores;
SELECT * FROM Suministra;
