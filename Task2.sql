CREATE DATABASE school_mnn;
USE school_mnn;
CREATE TABLE students(student_id INT  PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,email VARCHAR(100) NOT NULL UNIQUE,phone_number VARCHAR(17),date_of_birth DATE);
CREATE TABLE courses(course_id INT  PRIMARY KEY,course_name VARCHAR(100) NOT NULL,course_description TEXT,credit INT NOT NULL);
ALTER TABLE students
ADD COLUMN grade VARCHAR(2);
ALTER TABLE students
MODIFY COLUMN phone_number VARCHAR(15);
INSERT INTO students(first_name,last_name,email,phone_number,date_of_birth,grade)
VALUES('Mansi','Singh','mansisingh80094@gmail.com','7498-4849','2002-02-28','A'),
('Shubhi','Dwivedi','shubhi688@gmail.com','6467-4678','2001-10-17','B'),
('Anmol','Singh','anmol5766@gmail.com','7686-6868','2000-08-12','A');
INSERT INTO courses(course_name,course_description,credit)
VALUES('Introduction to Mathematics','Basic concepts of mathematics',4),
('Intermidiate AWS','AWS applications',5),
('Computer Science','Introduction to computer science',3),
('English','Intro to english',2),
('Hindi','Intro to hindi',4);
SELECT first_name,last_name,email FROM students;
DROP TABLE school_managementt.students;
DROP DATABASE school_managementt;

