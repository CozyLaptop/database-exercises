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
USE employees;
SELECT employees.emp_no, CONCAT(first_name, ' ', last_name)
    AS Full_Name, salary, from_date, to_date
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

Use join_test_db;
CREATE DATABASE IF NOT EXISTS join_test_db;


DESCRIBE employees;
DESCRIBE join_test_db;
SHOW TABLES;
use join_test_db;
SHOW TABLES;
describe roles;

DROP DATABASE if exists join_test_db;
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS join_test_db;
Use join_test_db;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE if not exists users (
                                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                     name VARCHAR(100) NOT NULL,
                                     email VARCHAR(100) NOT NULL,
                                     role_id INT UNSIGNED DEFAULT NULL,
                                     PRIMARY KEY (id),
                                     FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');
SHOW TABLES;
describe roles;
SELECT * from roles;
INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);
show tables;
describe users;
SELECT * from users;
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;
SELECT users.name as user_name, roles.name as role_name
FROM roles
         LEFT JOIN users ON users.role_id = roles.id;
use employees;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

use codeup_test_db;
CREATE TABLE preferences (
                             person_id INT UNSIGNED NOT NULL,
                             album_id INT UNSIGNED NOT NULL,
                             FOREIGN KEY (person_id) REFERENCES persons(id),
                             FOREIGN KEY (album_id) REFERENCES  albums(id)
);
INSERT INTO preferences (person_id, album_id)
VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);