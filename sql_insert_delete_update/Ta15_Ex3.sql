create database Cientificos;
use Cientificos;

CREATE TABLE Cientificos (
    DNI VARCHAR(8) PRIMARY KEY,
    nomApels VARCHAR(255)
);

CREATE TABLE Proyecto (
    id CHAR(4) PRIMARY KEY,
    nombre VARCHAR(255),
    horas INT
);

CREATE TABLE Asignado_A (
    cientifico VARCHAR(8),
    proyecto CHAR(4),
    PRIMARY KEY (cientifico, Proyecto),
    FOREIGN KEY (cientifico) REFERENCES Cientificos(DNI),
    FOREIGN KEY (proyecto) REFERENCES Proyecto(id)
);

INSERT INTO Cientificos (DNI, nomApels) VALUES
('11111111', 'Juan Pérez'),
('22222222', 'María Rodríguez'),
('33333333', 'Carlos Sánchez'),
('44444444', 'Laura García'),
('55555555', 'José López'),
('66666666', 'Ana Martínez'),
('77777777', 'Pedro González'),
('88888888', 'Isabel Torres'),
('99999999', 'Andrés Díaz'),
('10101010', 'Elena Ruiz');

INSERT INTO Proyecto (id, nombre, horas) VALUES
('P001', 'Proyecto A', 1000),
('P002', 'Proyecto B', 750),
('P003', 'Proyecto C', 1200),
('P004', 'Proyecto D', 800),
('P005', 'Proyecto E', 900),
('P006', 'Proyecto F', 1100),
('P007', 'Proyecto G', 950),
('P008', 'Proyecto H', 1300),
('P009', 'Proyecto I', 700),
('P010', 'Proyecto J', 850);

INSERT INTO Asignado_A (cientifico, proyecto) VALUES
('11111111', 'P001'),
('11111111', 'P002'),
('22222222', 'P001'),
('22222222', 'P003'),
('33333333', 'P002'),
('33333333', 'P004'),
('44444444', 'P003'),
('44444444', 'P005'),
('55555555', 'P004'),
('55555555', 'P005');

UPDATE Cientificos SET nomApels = 'Juan Pérez Modificado' WHERE DNI = '11111111';
DELETE FROM Cientificos WHERE DNI = '10101010';

UPDATE Proyecto SET nombre = 'Proyecto A Modificado' WHERE id = 'P001';
DELETE FROM Proyecto WHERE id = 'P010';

UPDATE Asignado_A SET horas = 800 WHERE cientifico = '11111111' AND proyecto = 'P001';
DELETE FROM Asignado_A WHERE cientifico = '33333333' AND proyecto = 'P004';

SELECT * FROM Cientificos;
SELECT * FROM Proyecto;
SELECT * FROM Asignado_A;