DROP DATABASE Gimnasio;
CREATE DATABASE Gimnasio;
USE Gimnasio;
CREATE TABLE Socio (
num_socio int NOT NULL auto_increment,
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,
telefono varchar(20) NOT NULL,
primary key (num_socio));

CREATE TABLE Instructor (
dni varchar(15) NOT NULL,
nombre varchar(50) NOT NULL,
especialidad varchar(50) NOT NULL,
correo varchar(100) NOT NULL,
primary key (dni));

CREATE TABLE Clase (
id_clase int NOT NULL auto_increment,
codigo_publico varchar(50) UNIQUE,
nombre_actividad varchar(50) NOT NULL,
capacidad_max int NOT NULL,
dni_instructor varchar(15) NOT NULL,
primary key (id_clase),
foreign key (dni_instructor) references Instructor (dni));

CREATE TABLE Asiste (
id_asistencia int NOT NULL auto_increment,
primary key (id_asistencia),
dni_id_socio int NOT NULL,
clase_id int NOT NULL,
foreign key (dni_id_socio) references Socio (num_socio),
foreign key (clase_id) references Clase (id_clase));

