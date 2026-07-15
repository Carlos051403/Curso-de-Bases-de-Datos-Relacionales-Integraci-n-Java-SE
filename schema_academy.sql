DROP DATABASE IF EXISTS academy;
-- DDL (Data Definition Language)
CREATE DATABASE academy;
USE academy;

CREATE TABLE teacher (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR (50),
    surname VARCHAR (50),
    PRIMARY KEY (id)
    );
    
CREATE TABLE course (
	name VARCHAR (100) NOT NULL,
    hours INT,
    classroom VARCHAR (100),
    vacations VARCHAR (100),
    teacher_id INT,
    PRIMARY KEY (name),
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);

-- Modificación de Tablas (DDL)
ALTER TABLE course
ADD  mandatory BOOL;

SELECT * FROM course;

SET SQL_SAFE_UPDATES = 0;
UPDATE course SET mandatory = TRUE WHERE hours > 100;
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM course WHERE mandatory IS NULL;
SELECT * FROM course WHERE mandatory IS NOT NULL;
-- Con COALESCE sustituimos el valor de un campo como null para que apresca un valor concreto
-- normalmente los campos booleanos empiezan por la convencion is, has
SELECT name, COALESCE(mandatory, FALSE) AS is_mandatory FROM course;

-- aca tumbamos una columna entera
ALTER TABLE course
DROP COLUMN mandatory;

-- VACIAMOS LA TABLA ENTERA de valores 
TRUNCATE TABLE course;
-- BORRAMOS LA TABLA
DROP TABLE course;
-- ELIMINAR REGISTROS DE UNA TABLA
DELETE FROM course WHERE teacher_id = 1;