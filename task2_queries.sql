-- Display first 5 employee records
SELECT *
FROM employees
LIMIT 5;

-- Find employees with first name Georgi
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name='Georgi';

-- Display first 5 salary records
SELECT *
FROM salaries
LIMIT 5;

-- Count total employees
SELECT COUNT(*)
FROM employees;

-- Count total salary records
SELECT COUNT(*)
FROM salaries;

-- Show latest hired employees
SELECT first_name, last_name
FROM employees
ORDER BY hire_date DESC
LIMIT 10;