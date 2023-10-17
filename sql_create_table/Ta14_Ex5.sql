create database Almacenes;
use Almacenes;

CREATE TABLE Almacenes (
    codigo INT PRIMARY KEY,
    lugar VARCHAR(100),
    capacidad INT
);

CREATE TABLE Cajas (
    numReferencia CHAR(5) PRIMARY KEY,
    contenido VARCHAR(100),
    valor INT,
    almacen INT,
    FOREIGN KEY (almacen) REFERENCES Almacenes(codigo)
);
