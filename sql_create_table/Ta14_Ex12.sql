CREATE DATABASE Clase; 
USE Clase;

CREATE TABLE Profesores (
    DNI VARCHAR(8) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100) NOT NULL,
    dirección VARCHAR(255) NOT NULL,
    titulación VARCHAR(100) NOT NULL,
    gana DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Cursos (
    cursoCod INT PRIMARY KEY,
    nombreCurso VARCHAR(100) NOT NULL,
    profesorDNI VARCHAR(8) NOT NULL,
    maxAlumnos INT NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaFin DATE NOT NULL,
    numHoras INT NOT NULL,
    UNIQUE (nombreCurso),
    CHECK (fechaInicio < fechaFin),
    FOREIGN KEY (profesorDNI) REFERENCES Profesores(DNI)
);
CREATE TABLE Alumnos (
    DNI VARCHAR(8) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100) NOT NULL,
    dirección VARCHAR(255) NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'H')) NOT NULL,
    fechaNac DATE NOT NULL,
    cursoCod INT,
    FOREIGN KEY (cursoCod) REFERENCES Cursos(cursoCod)
);