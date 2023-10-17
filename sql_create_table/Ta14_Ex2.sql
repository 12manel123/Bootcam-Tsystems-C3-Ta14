CREATE DATABASE Biblioteca; 
USE Biblioteca;

CREATE TABLE Editorial (
	claveeditorial SMALLINT NOT NULL,
	nombre VARCHAR(60),
	direccion VARCHAR (60),
	telefono VARCHAR (15),
	PRIMARY KEY (claveeditorial)
);

CREATE TABLE Libro (
	clavelibro INT NOT NULL,
	titulo VARCHAR(60),
	idioma VARCHAR(15),
	formato VARCHAR (15),
	claveeditorial SMALLINT,
	PRIMARY KEY (clavelibro),
	KEY (claveeditorial),
	FOREIGN KEY (claveeditorial)
	REFERENCES Editorial (claveeditorial)
	ON DELETE SET NULL
	ON UPDATE CASCADE
);

CREATE TABLE Tema (
	clavetema SMALLINT NOT NULL,
	nombre VARCHAR (40),
	PRIMARY KEY (clavetema)
);

CREATE TABLE Autor (
	claveautor INT NOT NULL,
	nombre VARCHAR (60),
	PRIMARY KEY (claveautor)
);

CREATE TABLE Ejemplar (
	claveejemplar INT NOT NULL,
	clavelibro INT NOT NULL,
	numeroorden SMALLINT NOT NULL,
	edicion SMALLINT,
	ubicacion VARCHAR (15),
	categoria CHAR,
	PRIMARY KEY (claveejemplar),
	FOREIGN KEY (clavelibro)
	REFERENCES Libro (clavelibro)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Socio (
	clavesocio INT NOT NULL,
	nombre VARCHAR (60),
	direccion VARCHAR (60),
	telefono VARCHAR (15),
	categoria CHAR,
	PRIMARY KEY (clavesocio)
);

CREATE TABLE Prestamo(
	clavesocio INT,
    claveejemplar INT,
    numeroorden SMALLINT,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE DEFAULT NULL,
    notas BLOB,
    FOREIGN KEY (clavesocio) REFERENCES Socio( clavesocio) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (claveejemplar) REFERENCES Ejemplar (claveejemplar) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE trata_sobre (
	clavelibro INT NOT NULL,
	clavetema SMALLINT NOT NULL,
	FOREIGN KEY (clavelibro)
	REFERENCES Libro (clavelibro)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (clavetema)
	REFERENCES Tema (clavetema)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE escrito_por (
	clavelibro INT NOT NULL,
	claveautor INT NOT NULL,
	FOREIGN KEY (clavelibro)
	REFERENCES Libro (clavelibro)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (claveautor)
	REFERENCES Autor (claveautor)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);