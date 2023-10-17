create database Investigadores;
use Investigadores;

CREATE TABLE Facultad (
    codigo int PRIMARY KEY,
    nombre nvarchar(100) NOT NULL
);

CREATE TABLE Investigadores (
    DNI varchar(8) PRIMARY KEY,
    nomApels nvarchar(255) NOT NULL,
    facultad int NOT NULL,
    FOREIGN KEY (facultad) REFERENCES Facultad(codigo)
);

CREATE TABLE Equipos (
    numSerie char(4) PRIMARY KEY,
    nombre nvarchar(100) NOT NULL,
    comienzo datetime NOT NULL,
    fin datetime NOT NULL,
    facultad int NOT NULL,
    FOREIGN KEY (facultad) REFERENCES Facultad(codigo)
);

CREATE TABLE Reserva (
    DNI varchar(8) NOT NULL,
    numSerie char(4) NOT NULL,
    PRIMARY KEY (DNI, numSerie),
    FOREIGN KEY (DNI) REFERENCES Investigadores(DNI) ON DELETE CASCADE,
    FOREIGN KEY (numSerie) REFERENCES Equipos(numSerie) ON DELETE CASCADE
);

