CREATE TABLE employees (
id INT,
first_name TEXT,
last_name TEXT,
department TEXT,
salary INT,
hire_date DATE
);

INSERT INTO employees VALUES
(1,'Ravi','Sharma','Sales',42000,'1995-05-10'),
(2,'Anu','Reddy','Marketing',55000,'2023-03-15'),
(3,'Lisha','Batha','Sales',60000,'1999-12-24'),
(4,'Sai','Kumar','IT',48000,'2021-07-20'),
(5,'Neha','Singh','Sales',70000,'1998-09-12');

SELECT first_name,last_name,salary
FROM employees;

SELECT *
FROM employees
WHERE salary > 50000;

SELECT *
FROM employees
WHERE department='Sales';

SELECT *
FROM employees
WHERE last_name LIKE 'S%';

SELECT *
FROM employees
WHERE department='Marketing'
AND salary > 50000;

SELECT *
FROM employees
ORDER BY salary DESC;

SELECT *
FROM employees
LIMIT 5;

SELECT
COUNT(*) AS total_filtered,
MIN(salary) AS min_salary,
MAX(hire_date) AS latest_hire
FROM employees
WHERE department='Sales'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND last_name LIKE 'S%';