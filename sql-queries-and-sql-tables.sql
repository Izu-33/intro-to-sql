CREATE DATABASE university;

USE university;

-- Creating a table for uni students.
CREATE TABLE students (
		student_id INTEGER,
        name VARCHAR(55),
        year INTEGER
        );

-- SELECT * FROM students;

DESCRIBE students;

INSERT INTO students (student_id, name, year)
VALUES (1, "Izundu Dan-Ekeh", 3);

INSERT INTO students (student_id, name, year)
VALUES (2, "Dorcas Roberts", 4), (3, "Miriam Abubakar", 3), (4, "Emeka Frank", 1);

SELECT * FROM students;

ALTER TABLE students
ADD COLUMN (age INTEGER,
            grade INTEGER,
            admitted_at DATE);

SELECT * FROM students;

ALTER TABLE students
DROP COLUMN year;

-- Set sql safe updates to 0
SET sql_safe_updates = 0;
SET GLOBAL sql_mode = 'NO_ENGINE_SUBSTITUTION';
SET SESSION sql_mode = 'NO_ENGINE_SUBSTITUTION';

DELETE FROM students WHERE student_id = 1;

SELECT * FROM students;

ALTER TABLE students
MODIFY COLUMN grade DECIMAL(2,1);

TRUNCATE students;

SELECT * FROM students;

DROP TABLE students;