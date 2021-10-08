use employees;
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
)
LIMIT 10;
SELECT title FROM titles
WHERE emp_no IN
(SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT dept_name, first_name, last_name FROM departments
JOIN dept_manager dm on departments.dept_no = dm.dept_no
JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date > NOW() AND gender = 'F';
