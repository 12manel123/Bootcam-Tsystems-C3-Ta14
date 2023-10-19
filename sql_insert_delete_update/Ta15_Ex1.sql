create database Directores;
use Directores;

CREATE TABLE Despachos (
    numero INT PRIMARY KEY,
    capacidad INT
);

CREATE TABLE Directores (
    DNI VARCHAR(8) PRIMARY KEY,
    nomApels VARCHAR(255),
    DNIJefe VARCHAR(8),
    despacho INT,
    FOREIGN KEY (Despacho) REFERENCES Despachos(Numero),
    FOREIGN KEY (DNIJefe) REFERENCES Directores(DNI)
);

INSERT INTO Despachos (numero, capacidad) VALUES
(101, 4),
(102, 3),
(103, 5),
(104, 2),
(105, 6),
(106, 4),
(107, 3),
(108, 5),
(109, 2),
(110, 6);

INSERT INTO Directores (DNI, nomApels, DNIJefe, despacho) VALUES
('12345678', 'Director 1', NULL, 101),
('23456789', 'Director 2', '12345678', 102),
('34567890', 'Director 3', '12345678', 103),
('45678901', 'Director 4', '23456789', 104),
('56789012', 'Director 5', '23456789', 105),
('67890123', 'Director 6', '34567890', 106),
('78901234', 'Director 7', '34567890', 107),
('89012345', 'Director 8', '45678901', 108),
('90123456', 'Director 9', '45678901', 109),
('01234567', 'Director 10', '56789012', 110);

UPDATE Despachos SET capacidad = 5 WHERE numero = 101;
DELETE FROM Despachos WHERE numero = 110;

UPDATE Directores SET nomApels = 'Nuevo Nombre' WHERE DNI = '12345678';
DELETE FROM Directores WHERE DNI = '34567890';

SELECT * FROM Despachos;
SELECT * FROM Directores;