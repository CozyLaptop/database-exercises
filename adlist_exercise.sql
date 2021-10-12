CREATE DATABASE adlister_db;
SHOW databases;
USE adlister_db;
SHOW tables;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS categories;
CREATE TABLE IF NOT EXISTS users (
   id INT AUTO_INCREMENT,
   email VARCHAR(128) NOT NULL,
   password VARCHAR(128) NOT NULL,
   PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS ads (
    id INT AUTO_INCREMENT,
    user_id INT,
    title VARCHAR(128) NOT NULL,
    description VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE IF NOT EXISTS ads_categories (
    ad_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) references categories(id)
);
DROP TABLE IF EXISTS category;
CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    PRIMARY KEY (id)
);
SHOW TABLES;
# Seeders
INSERT INTO users (email, password) VALUES
('aaa@a.com', 'Great for chewing!'),
('bbb@b.com', 'Great for chocolate goodness!'),
('cherry@fruit.com', 'Don’‘t bite too hard!');
SELECT * FROM users;
INSERT INTO categories (name) VALUES
('help wanted'),
('for sale'),
('outdoors'),
('indoors');
SELECT * FROM categories;
INSERT INTO ads (user_id, title, description) VALUES
(1, 'help wanted outside', 'I need some help outside help please'),
(2, 'selling indoor furniture', 'Im selling indoor furniture, 100$'),
(3, 'general help', 'I need general help'),
(3, 'for sale some shoes', 'Im selling some shoes');
INSERT INTO ads_categories (ad_id, category_id) VALUES
(2,1),
(2,3),
(3,2),
(3,4),
(4,1),
(5,2);
SELECT id, user_id, ads.title, description from ads;
