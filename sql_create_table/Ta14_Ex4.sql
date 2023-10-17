create database Empleados;
use Empleados;

CREATE TABLE Departamentos (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100),
    presupuesto INT
);

CREATE TABLE Empleados (
    DNI VARCHAR(8) PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(255),
	departamento INT,
    FOREIGN KEY (departamento) REFERENCES Departamentos(codigo)
);
