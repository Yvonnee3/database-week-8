-- creating database
CREATE DATABASE uni;

-- use the database 
USE uni;

-- Create campus table
CREATE TABLE campus (
campus_id INT PRIMARY KEY AUTO_INCREMENT,
campus_name VARCHAR(100) NOT NULL UNIQUE
);

-- Create department table
CREATE TABLE department (
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) NOT NULL UNIQUE
);

-- Create school table
CREATE TABLE school (
school_id INT PRIMARY KEY AUTO_INCREMENT,
school_name VARCHAR(100) NOT NULL UNIQUE,
department_id INT,
FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Create major table
CREATE TABLE major (
major_id INT PRIMARY KEY AUTO_INCREMENT,
major_name VARCHAR(100) NOT NULL UNIQUE,
department_id INT,
FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Create course table
CREATE TABLE course (
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100) NOT NULL UNIQUE,
department_id INT,
FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Create students table
CREATE TABLE students (
student_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100) NOT NULL UNIQUE,
campus_id INT,
school_id INT,
major_id INT,
FOREIGN KEY (campus_id) REFERENCES campus(campus_id),
FOREIGN KEY (school_id) REFERENCES school(school_id),
FOREIGN KEY (major_id) REFERENCES major(major_id)
);

-- Create enrollment table
CREATE TABLE enrollment (
enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
course_id INT,
enrollment_date DATE,
UNIQUE(student_id, course_id), -- prevents double enrollment
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- Insert unique campuses
INSERT IGNORE INTO campus (campus_name) VALUES
('Main Campus'),
('Satellite Campus');

-- Insert unique departments
INSERT IGNORE INTO department (department_name) VALUES
('Computer Science'),
('Business');

-- Insert unique schools
INSERT INTO school (school_name, department_id) VALUES
('School of Computing', 1),
('School of Business', 2);

-- Insert unique majors
INSERT INTO major (major_name, department_id) VALUES
('Software Engineering', 1),
('Information Systems', 1),
('Marketing', 2),
('Accounting', 2);

-- Insert unique courses
INSERT INTO course (course_name, department_id) VALUES
('HTML', 1),
('Database Systems', 1),
('Principles of Marketing', 2),
('Financial Accounting', 2);

-- Insert students 
INSERT INTO students (first_name, last_name, email, campus_id, school_id, major_id) VALUES
('Yvonne', 'Mueni', 'yvonnemueni@gmail.com', 1, 1, 1),
('Cynthia', 'Wanda', 'cynthia2w@gmail.com', 1, 2, 3),
('Ann', 'Sammy', 'annsammy@gmail.com', 2, 1, 2),
('Shali', 'Kim', 'shalikim@gmail.com', 2, 2, 4);

-- Insert enrollments 
INSERT INTO enrollment (student_id, course_id, enrollment_date) VALUES
(1, 1, '2025-01-15'),
(2, 3, '2021-01-20'),
(3, 1, '2022-01-17'),
(4, 4, '2020-01-21');









