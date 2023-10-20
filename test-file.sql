USE university;

CREATE TABLE stud(
student_id INTEGER,
name VARCHAR(55),
age INTEGER,
PRIMARY KEY (student_id)
);

CREATE TABLE proj(
project_id INTEGER,
title VARCHAR(65),
student_id INTEGER NOT NULL,
PRIMARY KEY (project_id),
FOREIGN KEY (student_id) REFERENCES stud(student_id)
);

ALTER TABLE proj
DROP FOREIGN KEY proj_ibfk_1;

ALTER TABLE proj
ADD CONSTRAINT Fk_student
FOREIGN KEY(student_id) REFERENCES stud(student_id);


SELECT AVG(total_count) mean, MAX(total_count) max, MIN(total_count) min
FROM (SELECT department, COUNT(*) total_count
      FROM students
      GROUP BY department) AS sub;
      
      
SELECT * FROM students;

UPDATE students
SET student_id = 15
WHERE student_id = 1;

SELECT * FROM students;

DELETE FROM students
WHERE name = 'Seun Dada';

SELECT *
FROM projects
LEFT JOIN students
ON students.student_id = projects.student_id
WHERE students.student_id IS NULL;


SELECT *
FROM students s
RIGHT JOIN projects p
ON p.student_id = s.student_id
WHERE s.student_id IS NULL;

SELECT * FROM projects;

ALTER TABLE projects
ADD COLUMN name TEXT;

UPDATE projects p
JOIN students s
ON p.student_id = s.student_id
SET p.name = s.name;

DELETE projects
FROM projects
LEFT JOIN students
ON projects.student_id = students.student_id
WHERE students.student_id IS NULL;

SELECT *
FROM projects;