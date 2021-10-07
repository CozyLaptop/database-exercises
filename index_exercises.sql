use employees;
SELECT DATABASE();
SHOW INDEXES FROM employees;

SELECT COUNT(*) from titles;

SHOW INDEXES FROM departments;

SELECT salary FROM salaries WHERE salary < 70000 AND salary > 50000;

ALTER TABLE salaries ADD INDEX salary_index (salary);

SELECT salary FROM salaries WHERE salary < 70000 AND salary > 50000;

use codeup_test_db;
CREATE table different_quotes(
    id int not null auto_increment,
    content varchar(248) not null,
    author varchar(58) not null,
    primary key (id));
SELECT * FROM quotes;
# 1. use employees
USE employees;
# 2. describe each table
SHOW tables;
# 3. describe departments;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

SHOW INDEXES from employees;

SELECT * FROM titles;

USE codeup_test_db;

SHOW INDEXES from albums;
ALTER TABLE albums ADD UNIQUE unique_artist_and_name (artist, name);
SELECT * from albums;
# drop index salary_index on salaries;
CREATE TABLE persons (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT UNSIGNED NOT NULL,
                         PRIMARY KEY (id),
                         FOREIGN KEY (album_id) REFERENCES albums (id)
);