USE academy;
-- SQL Queries
SELECT * FROM teacher;
SELECT * FROM course;

SELECT * FROM course ORDER BY hours;
SELECT * FROM course ORDER BY hours DESC;
SELECT * FROM course ORDER BY hours DESC LIMIT 2;

SELECT name, hours FROM course;

-- Querys con condicion
SELECT name, hours FROM course
WHERE hours >= 100 AND hours <= 150;

-- Esta es lo mismo que la antertior
SELECT name, hours FROM course
WHERE hours BETWEEN 100 AND 150;

-- Filtros por textos
SELECT * FROM course WHERE classroom = 'B1';
-- Filtros con comodines conocidos como WildCards
-- '_'la barra brava no sustituye a cualquier numero de caracter solo sustituye 1 caracter
SELECT * FROM course WHERE classroom LIKE '_1';
-- % significa desde 0 hasta infinitos caracter solo sabemos en que termina
SELECT * FROM course WHERE classroom LIKE '%1';
-- encerrar un caracter entre % significa que busque algo que contenga ese caracter sin importar su posición
SELECT * FROM course WHERE name LIKE '%p%';

-- Consultas de agregación

SELECT classroom FROM course;
SELECT COUNT(classroom) AS classroom FROM course;
-- DISTINC sirve para que nos entregue valores sin repetirse
SELECT COUNT(DISTINCT classroom) AS classrooms FROM course;

-- PARA SUMAS DE CAMPOS NUMERICOS
SELECT SUM(hours) AS total_horas FROM course;
SELECT SUM(hours) AS total_horas FROM course WHERE teacher_id = 1;

-- AVG calcula media
SELECT AVG(hours) AS avg_hours FROM course;

-- MAX T MIN calcula maximo y minimo de numeros
SELECT MAX(hours) AS max_hours, MIN(hours) AS min_hours FROM course;

-- SUBCONSULTAS
SELECT * FROM course WHERE hours = 200;
SELECT * FROM course WHERE hours = (SELECT MAX(hours) FROM course);

SELECT teacher_id, SUM(hours) AS total_hours 
FROM course
GROUP BY teacher_id;

-- ESTO ES PARA FILTRAR LOS GROUP BY
-- normalmente para filtrar se utiliza la clausula de where pero 
-- where no se puede utilizar con el group by en este caso usaremos HAVING
-- WHERE cuando es sin GROUP BY
-- HAVING cuando se usa GROUP BY
SELECT teacher_id, SUM(hours) AS total_hours 
FROM course
GROUP BY teacher_id
HAVING total_hours > 200;