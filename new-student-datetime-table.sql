USE university;

DROP TABLE IF EXISTS students;

CREATE TABLE IF NOT EXISTS students (
    student_id INTEGER,
    name VARCHAR(55),
    admitted_at DATE,
    age INTEGER,
    grade DECIMAL(2,1),
    entry_date DATETIME
);

INSERT INTO students (student_id, name, admitted_at, age, grade, entry_date)
VALUES (1, 'Seun Dada', '2015-09-01', 27, 3.8, '2015-09-01 13:21:59'),
       (2, 'Miriam Abubakar', '2017-09-01', 24, 4.0, '2017-09-01 11:13:51'), 
       (3, 'Dorcas Roberts', '2016-09-01', 24, 3.7, '2016-09-01 14:19:23'),
       (4, 'Ayomide Titilope', '2015-09-01', 25, 4.0, '2015-09-01 10:11:34'), 
       (5, 'Emeka Jude', '2014-09-01', 24, 3.8, '2014-09-01 15:12:21'),
	   (6, 'Caroline Obi', '2013-09-01', 27, 3.1, '2013-09-01 12:12:36'),
	   (7, 'Franklin Oladele', '2019-09-01', 18, 3.9, '2019-09-01 10:00:00'),
	   (8, 'Kola Ola', '2013-09-01', 28, 4.0, '2013-09-01 11:10:21'), 
       (9, 'Emmanuel Ovi', '2016-09-01', 23, 3.1, '2016-09-01 11:59:59'),
	   (10, 'Kareem Musa', '2016-09-01', 24, 3.3, '2016-09-01 10:11:21'),
	   (11, 'Mustapha Ahmed', '2016-09-01', 24, 3.9, '2016-09-01 15:11:20'),
	   (12, 'Femi Akin', '2017-09-01', 24, NULL, '2017-09-01 09:11:32');

SELECT * FROM students;