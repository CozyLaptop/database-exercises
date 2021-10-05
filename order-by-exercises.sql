USE employees;
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# AND gender = 'M'
ORDER BY first_name, last_name;


SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT * FROM employees
WHERE last_name LIKE '%e%';