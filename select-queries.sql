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
WHERE name LIKE '%M%';

SELECT *
FROM students
WHERE name LIKE '%Musa';

SELECT *
FROM students
WHERE name LIKE 'K%';

SELECT *
FROM students
WHERE age LIKE '2_';

SELECT *
FROM students
WHERE name LIKE '%O_i';

SELECT *
FROM students
WHERE admitted_at > '2015-09-01' AND grade > 3.1;

SELECT *
FROM students
WHERE age > 20 AND grade < 3.9;

SELECT *
FROM students
WHERE name LIKE 'M%' OR grade > 3.1;

SELECT *
FROM students
WHERE age > 20 OR grade > 3.1 OR admitted_at > '2017-09-01';

SELECT *
FROM students
WHERE NOT grade >= 3.8;

SELECT *
FROM students
WHERE NOT grade >= 3.8 AND NOT age >= 25;

-- Update grade column with a NULL value
UPDATE students
SET grade = NULL
WHERE grade = 0.0;

SELECT *
FROM students
WHERE grade IS NULL;

SELECT * FROM students;

SELECT NOW();

SELECT CURDATE();

SELECT TIME(NOW());

SELECT EXTRACT(HOUR FROM entry_date) AS year
FROM students;

SELECT COUNT(name) AS num_of_rows
FROM students;

SELECT DISTINCT department AS count_dept
FROM students;

SELECT department, COUNT(amount_paid) AS transct_count
FROM students
GROUP BY department;

SELECT department, admitted_at, SUM(amount_paid) total_amt
FROM students
GROUP BY department, admitted_at
ORDER BY 2;

SELECT admitted_at, SUM(amount_paid) total_amt
FROM students
GROUP BY admitted_at
HAVING total_amt > 40000
ORDER BY 1;

SELECT department, COUNT(amount_paid) trnsct_count
FROM students
GROUP BY department
HAVING trnsct_count > 2;


SELECT department, admitted_at, SUM(amount_paid) total_amt
FROM students
GROUP BY department, admitted_at
HAVING total_amt > 60000;


SELECT department, admitted_at, SUM(amount_paid) total_amt
FROM students
WHERE admitted_at > '2015-09-01'
GROUP BY department, admitted_at
HAVING total_amt > 30000
ORDER BY 3;
  

SELECT * FROM students;

CREATE TABLE pupils (
student_id INTEGER NOT NULL,
name VARCHAR(55) NOT NULL,
age INTEGER DEFAULT 18
);

SELECT * FROM pupils;

INSERT INTO pupils VALUES (4, 'Pamela Thomas');





