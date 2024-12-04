use dbmsproject;

-- Insert sample data into User table
INSERT INTO User (name, role, email, phone, password) VALUES
('Pranto Chandra Das', 'student', 'prantochandra.csecu@gmail.com', '01609302008', 'abc!@123'),
('Adnan Uddin','teacher' , 'adnanuddin.csecu@gmail.com', '01822238016', 'ghi!@123'),
('Abroy Shovan Chowdhury','student', 'chowdhuryabroy.csecu@gmail.com', '01616240628', 'def!@123'),
('Emran Hoque','teacher', 'emran.cse.cu@gmail.com', '01881726226', 'jkl!@123'),
('Tusher Shubhro Chakma','student' , 'tusher.csecu@gmail.com', '01862049951', 'mno!@123'),
('Farzana Islam', 'student', 'farzana.csecu@gmail.com', '01712345678', 'pqr!@123'),
('Kamrul Hasan', 'student', 'kamrul.csecu@gmail.com', '01898765432', 'stu!@123'),
('Mehedi Hasan', 'student', 'mehedi.csecu@gmail.com', '01511223344', 'vwx!@123'),
('Nusrat Jahan', 'student', 'nusrat.csecu@gmail.com', '01999887766', 'yz!@123'),
('Hasan Mahmud', 'student', 'hasan.csecu@gmail.com', '01333557799', 'abc!@789');

select * from user;

-- Insert sample data into Student table
INSERT INTO Student (father_name, mother_name, educational_qualification, date_of_birth, user_id) VALUES
('Ratan Chandra Das', 'Halana Rani Das', 'HSC Pass', '2003-05-30', 1),
('Alok Chowdhury', 'Koroby Chowdhury', 'HSC Pass', '2002-11-22', 3),
('Suman Chakma', 'Kabita Chakma','HSC pass', '2003-05-21',5),
('Abul Islam', 'Sharmin Akter', 'SSC Pass', '2004-03-15', 6),
('Harunur Rashid', 'Fatema Begum', 'HSC Pass', '2003-09-10', 7),
('Nazmul Islam', 'Ayesha Siddique', 'SSC Pass', '2005-01-25', 8),
('Ashraful Islam', 'Khadiza Begum', 'HSC Pass', '2003-10-28', 9),
('Abdul Kader', 'Sharifa Begum', 'SSC Pass', '2005-01-25', 10);

select * from student;

-- Insert sample data into Teacher table
INSERT INTO Teacher (hire_date, salary, user_id) VALUES
('2022-05-01', 15000.00, 2),
('2020-03-15', 20000.00, 4);

select * from teacher;

-- Insert sample data into Exam table
-- INSERT INTO Exam (exam_name) VALUES
-- ('CAB'),
-- ('DCS');

select * from exam;

-- Insert sample data into Course table
INSERT INTO Course (course_name, course_duration, course_fee, exam_name, conductedBy) VALUES
('Computer Application Basic', 30, 3000.00, 'CAB', 2),
('Diploma in Computer Science', 60, 6000.00, 'DCS', 3);

select * from course;

-- Create a trigger to calculate due_ammount
-- DELIMITER $$
-- CREATE TRIGGER calculate_due_amount
-- BEFORE INSERT ON Payment
-- FOR EACH ROW
-- BEGIN
--     -- Calculate due_ammount as (course fee - ammount_paid)
--     DECLARE course_fee DECIMAL(10, 2);

--     -- Get the course fee for the related course
--     SELECT course_fee INTO course_fee
--     FROM Course
--     WHERE course_id = NEW._for;

--     -- Calculate the due amount
--     SET NEW.due_ammount = course_fee - NEW.ammount_paid;
-- END $$
-- DELIMITER ;

-- Insert sample data into Payment table
INSERT INTO Payment (madeBy, requiredFor, total_amount, amount_paid, due_amount ) VALUES
(3000.00, 0.00, 1, 1),
(3000.00, 3000.00, 2, 2),
(4000.00, 2000.00, 2, 3),
(2000.00, 1000.00, 1, 4),
(3000.00, 0.00, 1, 5),
(4500.00, 1500.00, 2, 6),
(5000.00, 1000.00, 2, 7),
(1500.00, 1500.00, 1, 8);

select * from payment;

-- Insert sample data into Takes table
INSERT INTO Takes (student_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 1);

select * from takes;

-- Insert sample data into Participates table
-- INSERT INTO Participates (student_id, exam_id) VALUES
-- (1, 1),
-- (2, 2),
-- (3, 2),
-- (4, 1),
-- (5, 1),
-- (6, 2),
-- (7, 2),
-- (8, 1);

select * from participates;