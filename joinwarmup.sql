SHOW databases;
use movies;
SHOW TABLES;
DESCRIBE movie;
SELECT * FROM movie;
SELECT title, person_name, budget, department_name FROM movie m
JOIN movie_crew mc ON m.movie_id = mc.movie_id
JOIN person p ON mc.person_id = p.person_id
JOIN department d ON mc.department_id = d.department_id
WHERE person_name = 'Mark Hamill' OR person_name = 'Harrison Ford'
ORDER BY budget DESC;