-- Select Database
USE employees;

-- Query 1: Employee - Department Mapping
SELECT
e.emp_no,
CONCAT(e.first_name,' ',e.last_name) AS name,
d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no=de.emp_no
INNER JOIN departments d
ON de.dept_no=d.dept_no
WHERE de.to_date='9999-01-01'
LIMIT 5;

-- Query 2: Department-wise Employee Count
SELECT
d.dept_name,
COUNT(de.emp_no) AS total_employees
FROM departments d
INNER JOIN dept_emp de
ON d.dept_no=de.dept_no
WHERE de.to_date='9999-01-01'
GROUP BY d.dept_name;

-- Query 3: Average Salary of Current Employees
SELECT
AVG(s.salary) AS average_salary
FROM salaries s
INNER JOIN dept_emp de
ON s.emp_no=de.emp_no
WHERE de.to_date='9999-01-01';

-- Query 4: Top 5 Highest Salaries
SELECT
emp_no,
salary
FROM salaries
ORDER BY salary DESC
LIMIT 5;

-- Query 5: Total Employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- Query 6: Total Departments
SELECT COUNT(*) AS total_departments
FROM departments;