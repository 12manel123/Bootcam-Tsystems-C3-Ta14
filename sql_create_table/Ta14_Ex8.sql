create database ProvedoresPiezas;
use ProvedoresPiezas;

CREATE TABLE Piezas (
    codigo INT PRIMARY KEY,
    nombre NVARCHAR(100)
);

CREATE TABLE Proveedores (
    id CHAR(4) PRIMARY KEY,
    nombre NVARCHAR(100)
);

CREATE TABLE Suministra (
    codigoPieza INT,
    idProveedor CHAR(4),
    precio INT,
    PRIMARY KEY (codigoPieza, idProveedor),
    FOREIGN KEY (codigoPieza) REFERENCES Piezas(codigo),
    FOREIGN KEY (idProveedor) REFERENCES Proveedores(id)
);
