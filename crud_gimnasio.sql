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