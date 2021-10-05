# 2. Update your queries for employees whose names start and end
# with 'E'. Use concat() to combine their first and last name
# together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) AS Full_Name FROM employees
WHERE last_name LIKE 'e%e';
# 3. Find all employees born on Christmas — 842 rows.
SELECT CONCAT(first_name, ' ', last_name) AS Full_Name,
birth_date AS Birthday
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;
# 4. Find all employees hired in the 90s and born on Christmas — 362 rows.
# Change the query for employees hired in the 90s and born on Christmas such that the
# 5. first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT CONCAT(first_name, ' ', last_name) AS Full_Name,
       hire_date AS Hire_Date,
       birth_date AS Birthday
FROM employees
WHERE (month(birth_date) = 12
  AND day(birth_date) = 25)
AND year(hire_date) BETWEEN 1990 AND 2000
ORDER BY Birthday,
         Hire_Date DESC;
# 6.
SELECT DATEDIFF(now(), hire_date) as Days_Working,
       CONCAT(first_name, ' ', last_name, ' ', 'has been with the company ', DATEDIFF(now(), hire_date), ' ', 'days' )
           AS Message
FROM employees
WHERE (month(birth_date) = 12
    AND day(birth_date) = 25)
  AND year(hire_date) BETWEEN 1990 AND 2000
ORDER BY Days_Working DESC;

