create database Investigadores;
use Investigadores;

CREATE TABLE Facultad (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Investigadores (
    DNI VARCHAR(8) PRIMARY KEY,
    nomApels VARCHAR(255) NOT NULL,
    facultad INT NOT NULL,
    FOREIGN KEY (facultad) REFERENCES Facultad(codigo)
);

CREATE TABLE Equipos (
    numSerie CHAR(4) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    comienzo DATE NOT NULL,
    fin DATE NOT NULL,
    facultad INT NOT NULL,
    FOREIGN KEY (facultad) REFERENCES Facultad(codigo)
);

CREATE TABLE Reserva (
    DNI VARCHAR(8) NOT NULL,
    numSerie CHAR(4) NOT NULL,
    PRIMARY KEY (DNI, numSerie),
    FOREIGN KEY (DNI) REFERENCES Investigadores(DNI) ON DELETE CASCADE,
    FOREIGN KEY (numSerie) REFERENCES Equipos(numSerie) ON DELETE CASCADE
);



INSERT INTO Facultad (codigo, nombre) VALUES
(1, 'Facultad de Ciencias'),
(2, 'Facultad de Ingeniería'),
(3, 'Facultad de Medicina'),
(4, 'Facultad de Letras'),
(5, 'Facultad de Derecho'),
(6, 'Facultad de Economía'),
(7, 'Facultad de Artes'),
(8, 'Facultad de Psicología'),
(9, 'Facultad de Historia'),
(10, 'Facultad de Química');


INSERT INTO Investigadores (DNI, nomApels, facultad) VALUES
('11111111', 'Juan Pérez', 1),
('22222222', 'María Rodríguez', 2),
('33333333', 'Carlos Sánchez', 3),
('44444444', 'Laura García', 4),
('55555555', 'José López', 5),
('66666666', 'Ana Martínez', 6),
('77777777', 'Pedro González', 7),
('88888888', 'Isabel Torres', 8),
('99999999', 'Andrés Díaz', 9),
('10101010', 'Elena Ruiz', 10);

INSERT INTO Equipos (numSerie, nombre, comienzo, fin, facultad) VALUES
('E001', 'Equipo A', '2023-10-01', '2023-10-31', 1),
('E002', 'Equipo B', '2023-10-01', '2023-10-31', 2),
('E003', 'Equipo C', '2023-10-01', '2023-10-31', 3),
('E004', 'Equipo D', '2023-10-01', '2023-10-31', 4),
('E005', 'Equipo E', '2023-10-01', '2023-10-31', 5),
('E006', 'Equipo F', '2023-10-01', '2023-10-31', 6),
('E007', 'Equipo G', '2023-10-01', '2023-10-31', 7),
('E008', 'Equipo H', '2023-10-01', '2023-10-31', 8),
('E009', 'Equipo I', '2023-10-01', '2023-10-31', 9),
('E010', 'Equipo J', '2023-10-01', '2023-10-31', 10);

INSERT INTO Reserva (DNI, numSerie) VALUES
('11111111', 'E001'),
('11111111', 'E002'),
('22222222', 'E003'),
('22222222', 'E004'),
('33333333', 'E005'),
('33333333', 'E006'),
('44444444', 'E007'),
('44444444', 'E008'),
('55555555', 'E009'),
('55555555', 'E010');

UPDATE Facultad SET nombre = 'Facultad de Ciencias Modificada' WHERE codigo = 1;
DELETE FROM Facultad WHERE codigo = 10;

UPDATE Investigadores SET nomApels = 'Juan Pérez Modificado' WHERE DNI = '11111111';
DELETE FROM Investigadores WHERE DNI = '10101010';

UPDATE Equipos SET comienzo = '2023-11-01' WHERE numSerie = 'E001';
DELETE FROM Equipos WHERE numSerie = 'E010';

UPDATE Reserva SET numSerie = 'E002' WHERE DNI = '11111111' AND numSerie = 'E001';
DELETE FROM Reserva WHERE DNI = '33333333' AND numSerie = 'E005';



SELECT * FROM Facultad;
SELECT * FROM Investigadores;
SELECT * FROM Equipos;
SELECT * FROM Reserva;