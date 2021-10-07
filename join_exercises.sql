USE employees;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name)
AS Full_Name
FROM departments d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees ON dm.emp_no = employees.emp_no
WHERE to_date >= NOW()
AND gender = 'F'
ORDER BY dept_name;
