USE gimnasio;
INSERT INTO socio (nombre, apellido, telefono) 
VALUES
('Luis', 'Diaz', '66666666'),
('Cristiano', 'Ronaldo', '7777777'),
('Lionel', 'Messi', '8888888'),
('Neymar', 'Santos', '9999999');

SELECT * FROM socio;

INSERT INTO instructor (dni, nombre, especialidad, correo)
VALUES
('12345678A', 'Zidane', 'Asistidor', 'zizou@gmail.com'),
('23456789B', 'Pele', 'Goleador', 'orey@gmail.com'),
('98765432C', 'Maradona', 'Regateador', 'maradios@gmail.com');

INSERT INTO clase (codigo_publico, nombre_actividad, capacidad_max, dni_instructor)
VALUES
('C1', 'Pases', 10, '12345678A'),
('C2', 'Goles', 12, '23456789B'),
('C3', 'Regates', 8, '98765432C'),
('C4', 'Resistencia', 15, '98765432C'),
('C5', 'Estiramiento', 15, '12345678A');

USE gimnasio;
UPDATE instructor
SET correo = 'zidane.coach@gmail.com'
WHERE dni = '12345678A';

SELECT * FROM instructor;

DELETE FROM socio
WHERE num_socio = 5;

SELECT * FROM socio;

INSERT INTO asiste (dni_id_socio, clase_id)
VALUES
(1, 2),
(2, 2);

INSERT INTO instructor (dni, nombre, especialidad, correo)
VALUES 
('88888888D', 'Pep', 'Estratega', 'pep.mister@gmail.com'),
('99999999A', 'Ancelotti', 'Estratega', 'Carletto@gmail.com');

SELECT * FROM socio;

INSERT INTO socio (nombre, apellido, telefono)
VALUES 
('Andres', 'Iniesta', '11122233'),
('Kylian', 'Mbappe', '99988877');

INSERT INTO clase (codigo_publico, nombre_actividad, capacidad_max, dni_instructor)
VALUES
('C6', 'Táctica', 20, '88888888D'),
('C7', 'Visión de Juego', 15, '88888888D'),
('C8', 'Arrastre de marcas', 9, '99999999A');

INSERT INTO asiste (dni_id_socio, clase_id)
VALUES
(3, 3),
(3, 4),
(3, 6),
(4, 1),
(4, 7),
(6, 7);

SELECT * FROM asiste;