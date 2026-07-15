USE academy;
-- JOINS
SELECT * 
FROM course c
INNER JOIN teacher t
ON c.teacher_id = t.id;

-- con la inicial de la tabla junto con el nombre de la columna podemos 
-- seleccionar la columna que queramos y renombrarla es lo mejor
SELECT c.name AS course_name, c.hours, c.classroom, t.name AS teacher_name, surname
FROM course c
INNER JOIN teacher t
ON c.teacher_id = t.id;

-- para filtrar
SELECT c.name AS course_name, c.hours, c.classroom, t.name AS teacher_name, surname
FROM course c
INNER JOIN teacher t
ON c.teacher_id = t.id
WHERE c.hours > 100;

-- Consulta de agregación
SELECT t.name, SUM(c.hours) AS total_hours
FROM course c
JOIN teacher t 
	ON c.teacher_id = t.id
    GROUP BY t.name;
    
-- Pra que no de error cuando usamos consultas de agregación y agrupamos
-- tenemos que decidir porque campo agrupamos, por lo que si tenemos 2 campos
-- aparte de la consulta de agregación, debemos poner los 2 campos en el group by
SELECT t.name, t.surname, SUM(c.hours) AS total_hours
FROM course c
JOIN teacher t 
	ON c.teacher_id = t.id
    GROUP BY t.name, t.surname;
    
-- LEFT AND RIGTH JOIN
SELECT c.name AS course_name, c.hours, c.classroom, t.name AS teacher_name, surname
FROM course c
RIGHT JOIN teacher t
ON c.teacher_id = t.id;

SELECT c.name AS course_name, c.hours, c.classroom, t.name AS teacher_name, surname
FROM course c
LEFT JOIN teacher t
ON c.teacher_id = t.id;