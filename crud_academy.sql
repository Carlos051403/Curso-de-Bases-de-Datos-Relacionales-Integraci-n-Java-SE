USE academy;
-- DML (Data Modification Language)
INSERT INTO teacher (name, Surname)
VALUES
('Alberto', 'García'),
('Beatriz', 'Lopez'),
('Carmen', 'Martín');

INSERT INTO course (name, hours, classroom, vacations, teacher_id)
VALUES
('Math', 100, 'A1', '2 Weeks', 1),
('Programming', 150, 'B1', '3 Weeks', 2),
('Computer Science', 150, 'B1', '3 weeks', 2),
('English', 50, 'A2', '1 Weeks', 1),
('Physics', 200, 'A2', '4 Weeks', 1),
('Chemistry', 100, 'Lab1', '2 Weeks', 3);

