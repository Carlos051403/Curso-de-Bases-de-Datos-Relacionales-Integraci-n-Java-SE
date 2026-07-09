USE gimnasio;

SELECT * FROM clase
ORDER BY capacidad_max ASC;

SELECT COUNT(id_clase) FROM clase;
SELECT AVG(capacidad_max) FROM clase;

SELECT dni_instructor, COUNT(id_clase) AS total_clases
FROM clase 
GROUP BY dni_instructor;
