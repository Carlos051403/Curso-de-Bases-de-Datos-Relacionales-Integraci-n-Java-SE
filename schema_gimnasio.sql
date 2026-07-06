CREATE DATABASE Gimnasio;
USE Gimnasio;
CREATE TABLE Socio (
num_socio int,
nombre varchar(255),
apellido varchar(255),
telefono varchar(255),
primary key (num_socio));

CREATE TABLE Instructor (
dni varchar(15),
nombre varchar(255),
especialidad varchar(255),
correo varchar(255),
primary key (dni));

CREATE TABLE Clase (
id_clase varchar(255),
nombre_actividad varchar(255),
capacidad_max int,
dni_instructor varchar(15),
primary key (id_clase),
foreign key (dni_instructor) references Instructor (dni));

CREATE TABLE Asiste (
id_asistencia int,
primary key (id_asistencia),
dni_id_socio int,
clase_id varchar(255),
foreign key (dni_id_socio) references Socio (num_socio),
foreign key (clase_id) references Clase (id_clase));

