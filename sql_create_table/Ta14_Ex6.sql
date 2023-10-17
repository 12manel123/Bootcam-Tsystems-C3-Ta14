create database Peliculas;
use Peliculas;

CREATE TABLE Peliculas (
	codigo INT PRIMARY KEY,
    nombre VARCHAR(100), 
    calificacionEdad INT
);

CREATE TABLE Salas (
	codigo INT PRIMARY KEY,
    nombre VARCHAR(100),
    pelicula INT,
    FOREIGN KEY (Pelicula) REFERENCES Peliculas(Codigo)
);