USE gimnasio;

SELECT nombre, nombre_actividad
FROM socio
INNER JOIN asiste
ON num_socio = dni_id_socio
INNER JOIN clase
ON id_clase = clase_id;

DESCRIBE asiste;

SELECT nombre, nombre_actividad
FROM socio
LEFT JOIN asiste
ON num_socio = dni_id_socio
LEFT JOIN clase
ON id_clase = clase_id;

SELECT nombre, nombre_actividad
FROM socio
RIGHT JOIN asiste
ON num_socio = dni_id_socio
RIGHT JOIN clase
ON id_clase = clase_id;