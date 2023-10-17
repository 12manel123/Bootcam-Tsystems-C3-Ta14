create database Tienda_informatica;
use Tienda_informatica;

CREATE TABLE Fabricantes (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Articulos (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio INT,
    fabricante INT,
    FOREIGN KEY (fabricante) REFERENCES Fabricantes(codigo)
);
