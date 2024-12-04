create database dbmsproject;
use dbmsproject;
drop database dbmsproject;

-- 1. User Table
CREATE TABLE User (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    role ENUM('student', 'teacher','admin') NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- 2. Student Table
CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    father_name VARCHAR(255) NOT NULL,
    mother_name VARCHAR(255) NOT NULL,
    educational_qualification VARCHAR(255),
    date_of_birth DATE,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);
drop table student;
-- 3. Teacher Table
CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    joining_date DATE,
    salary DECIMAL(10, 2),
    status ENUM('active', 'inactive') NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);
drop table teacher;
-- 4. Course Table
-- CREATE TABLE Exam (
--     exam_id INT PRIMARY KEY AUTO_INCREMENT,
--     exam_name VARCHAR(255) NOT NULL
-- );
-- drop table exam;

-- 5. Exam Table
CREATE TABLE Course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255) NOT NULL,
    course_duration INT NOT NULL,  -- Duration in days or weeks
    course_fee DECIMAL(10, 2) NOT NULL,
    exam_name varchar(255),
    conductedBy INT,               -- Teacher conducting the course
    FOREIGN KEY (conductedBy) REFERENCES Teacher(teacher_id) ON DELETE SET NULL
);
drop table course;
-- 6. Payment Table

CREATE TABLE Payment (
	payment_id INT PRIMARY KEY AUTO_INCREMENT,
	madeBy INT NOT NULL,		-- Refers to Student
    requiredFor INT NOT NULL,	-- Refers to Course
    total_amount DECIMAL(10, 2) NOT NULL,
    amount_paid DECIMAL(10, 2) NOT NULL,
    due_amount DECIMAL(10, 2),       
    FOREIGN KEY (requiredFor) REFERENCES Course(course_id) ON DELETE CASCADE,
    FOREIGN KEY (madeBy) REFERENCES Student(student_id) ON DELETE CASCADE
);
drop table payment;

-- 7. Takes Table (Relationship between Student and Course)
CREATE TABLE Takes (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Course(course_id) ON DELETE CASCADE
);
drop table takes;

-- 8. Participates Table (Relationship between Student and Exam)
-- CREATE TABLE Participates (
--     student_id INT NOT NULL,
--     exam_id INT NOT NULL,
--     PRIMARY KEY (student_id, exam_id),
--     FOREIGN KEY (student_id) REFERENCES Student(student_id) ON DELETE CASCADE,
--     FOREIGN KEY (exam_id) REFERENCES Exam(exam_id) ON DELETE CASCADE
-- );
-- drop table participates;
