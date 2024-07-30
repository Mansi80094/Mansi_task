CREATE DATABASE stds;
USE stds;
CREATE TABLE Students(s_id INT,s_name VARCHAR(50),s_age TINYINT);
INSERT INTO Students
VALUES(1,"Mansi",21),(2,"Shubhi",21);
SELECT * FROM Students;