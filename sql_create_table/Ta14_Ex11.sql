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
