USE university;

CREATE TABLE students (
	  student_id INTEGER,
	  name VARCHAR(55),
	  age INTEGER,
	  grade INTEGER,
	  admitted_at DATE
);

ALTER TABLE students
MODIFY COLUMN grade DECIMAL(2,1);

INSERT INTO students (student_id, name, age, grade, admitted_at)
VALUES (1, 'Seun Dada', 27, 3.8, '2015-09-01'),
       (2, 'Miriam Abubakar', 24, 4.0, '2017-09-01'), 
       (3, 'Dorcas Roberts', 24, 3.7, '2016-09-01'),
       (4, 'Ayomide Titilope', 25, 4.0, '2015-09-01'), 
       (5, 'Emeka Jude', 24, 3.8, '2014-09-01'),
	   (6, 'Caroline Obi', 27, 3.1, '2013-09-01'),
	   (7, 'Franklin Oladele', 18, 3.9, '2019-09-01'),
	   (8, 'Kola Ola', 28, 4.0, '2013-09-01'), 
       (9, 'Emmanuel Ovi', 23, 3.1, '2016-09-01'),
	   (10, 'Kareem Musa', 24, 3.3, '2016-09-01'),
	   (11, 'Mustapha Ahmed', 24, 3.9, '2016-09-01'),
	   (12, 'Femi Akin', 24, 0,'2017-09-01');
       
SELECT *
FROM students;

SELECT DISTINCT grade
FROM students;

SELECT *
FROM students
ORDER BY student_id DESC;

SELECT *
FROM students
ORDER BY age ASC, student_id DESC;

SELECT *
FROM students
ORDER BY age ASC
LIMIT 1;

SELECT *
FROM students
WHERE age > 24;

SELECT COUNT(*) AS num_of_students
FROM students
WHERE age > 24;

SELECT *
FROM students
WHERE grade >= 3.1;

SELECT COUNT(*) AS num_of_students
FROM students
WHERE grade >= 3.1;

SELECT * FROM students
WHERE name = 'Emmanuel Ovi';

SELECT *
FROM students
WHERE name LIKE 'K%';