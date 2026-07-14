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

