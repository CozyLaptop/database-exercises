USE employees;
# All departments and their managers
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name)
AS Full_Name
FROM departments d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees ON dm.emp_no = employees.emp_no
WHERE to_date >= NOW()
ORDER BY dept_name;
# Show all women department managers
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name)
                 AS Full_Name
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees ON dm.emp_no = employees.emp_no
WHERE to_date >= NOW()
AND gender = 'F'
ORDER BY dept_name;
# Current titles of employees working in Customer Service
SELECT title, COUNT(title)
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
GROUP BY t.title;
# Find the current salary of all managers
SELECT dept_name AS 'Department Name',
CONCAT(first_name, ' ', last_name) AS Full_Name,
s.salary AS 'Salary'
FROM departments d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees ON dm.emp_no = employees.emp_no
JOIN salaries s on dm.emp_no = s.emp_no
WHERE s.to_date >= NOW()
AND dm.to_date >= NOW()
ORDER BY dept_name;