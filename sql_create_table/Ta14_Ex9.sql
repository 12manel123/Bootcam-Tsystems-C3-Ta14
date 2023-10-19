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
