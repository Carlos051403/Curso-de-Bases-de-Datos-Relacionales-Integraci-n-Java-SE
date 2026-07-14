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
