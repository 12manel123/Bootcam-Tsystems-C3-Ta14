create database GrandesAlmacenes;
use GrandesAlmacenes;

CREATE TABLE Productos (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL
);

CREATE TABLE Cajeros (
    codigo INT  PRIMARY KEY,
    nomApels VARCHAR(255) NOT NULL
);

CREATE TABLE Maquinas_Registradoras (
    codigo INT PRIMARY KEY,
    piso INT NOT NULL
);

CREATE TABLE Venta (
    cajero INT NOT NULL,
    maquina INT NOT NULL,
    producto INT NOT NULL,
    PRIMARY KEY (cajero, maquina, producto),
    FOREIGN KEY (cajero) REFERENCES cajeros(codigo) ON DELETE CASCADE,
    FOREIGN KEY (maquina) REFERENCES maquinas_Registradoras(codigo) ON DELETE CASCADE,
    FOREIGN KEY (producto) REFERENCES productos(codigo) ON DELETE CASCADE
);

