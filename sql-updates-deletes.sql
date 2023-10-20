USE university;

SELECT *
FROM students;

SELECT DISTINCT department
FROM students;

SELECT department, admitted_at, SUM(amount_paid) AS total_amt
FROM students
GROUP BY department, admitted_at;

SELECT admitted_at, SUM(amount_paid) AS amt_paid
FROM students
GROUP BY admitted_at
ORDER BY 2;


SELECT admitted_at, SUM(amount_paid) AS amt_paid
FROM students
GROUP BY admitted_at
HAVING amt_paid > 20000
ORDER BY 2;