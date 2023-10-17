create database Directores;
use Directores;

CREATE TABLE Despachos (
    numero INT PRIMARY KEY,
    capacidad INT
);

CREATE TABLE Directores (
    DNI VARCHAR(8) PRIMARY KEY,
    nomApels NVARCHAR(255),
    DNIJefe VARCHAR(8),
    despacho INT,
    FOREIGN KEY (Despacho) REFERENCES Despachos(Numero),
    FOREIGN KEY (DNIJefe) REFERENCES Directores(DNI)
);