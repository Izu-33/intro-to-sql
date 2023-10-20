SELECT *
FROM students
INNER JOIN projects
ON students.student_id = projects.student_id;

SELECT NOW();