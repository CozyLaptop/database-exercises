USE employees;
SELECT DISTINCT last_name FROM employees;
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;
Select emp_no, salary from salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;