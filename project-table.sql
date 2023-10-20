USE university;

DROP TABLE IF EXISTS projects;

CREATE TABLE IF NOT EXISTS projects(
	project_id INTEGER,
    student_id INTEGER,
    title VARCHAR(60)
);

INSERT INTO projects (project_id, student_id, title)
VALUES (1, 2, 'Bioinformatics'),
       (2, 1, 'Cell Biology'),
       (3, 4, 'Fluid Mechanics'),
       (4, 6, 'Magnetism'),
       (5, 8, 'Electronics'),
       (6, 7, 'Mass Media'),
       (7, 5, 'Genetics'),
       (8, 3, 'Youth Cultures'),
       (9, 15, 'Class Conflict'),
       (10, 16, 'Instrumentation');
       
SELECT * FROM projects; 