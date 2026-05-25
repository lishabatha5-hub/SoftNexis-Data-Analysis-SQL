USE employees;

SELECT first_name,last_name,hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 5;

CREATE TABLE employee_sandbox AS
SELECT * FROM employees
LIMIT 1000;

SELECT COUNT(*) FROM employee_sandbox;

INSERT INTO employee_sandbox
(emp_no,birth_date,first_name,last_name,gender,hire_date)
VALUES
(500001,'1995-08-14','Emma','Johnson','F','2023-06-01');

INSERT INTO employee_sandbox VALUES
(500002,'1990-11-03','Liam','Smith','M','2023-06-01'),
(500003,'1988-04-22','Olivia','Brown','F','2023-06-01');

SELECT * FROM employee_sandbox
WHERE emp_no>=500000;

UPDATE employee_sandbox
SET last_name='Williams'
WHERE emp_no=500001;

SELECT * FROM employee_sandbox
WHERE emp_no=500001;

DELETE FROM employee_sandbox
WHERE emp_no=500003;

SELECT * FROM employee_sandbox
WHERE emp_no>=500000;