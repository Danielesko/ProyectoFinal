CREATE DATABASE Proyecto;
USE Proyecto;
CREATE TABLE Juegos(
	id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha date NOT NULL,
    descripcion text NOT NULL,
	imagen VARCHAR(300) NOT NULL,
    valoracion float NULL,
    num_jug VARCHAR(10) NOT NULL,
    tiempo_max VARCHAR(20) NOT NULL,
    tiempo_min VARCHAR(20) NOT NULL
);
CREATE TABLE Usuarios(
	id INT auto_increment NOT NULL PRIMARY KEY,
    correo VARCHAR(100) NOT NULL,
    contrasena VARCHAR(200) NOT NULL
);
CREATE TABLE Recomendaciones(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_juego INT NOT NULL,
    FOREIGN KEY (id_usuario)
    REFERENCES Usuarios (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_juego)
    REFERENCES Juegos (id) ON DELETE CASCADE ON UPDATE CASCADE
);