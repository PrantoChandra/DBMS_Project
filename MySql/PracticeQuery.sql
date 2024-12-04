use dbmsproject;

select * from user;
select * from student;
select * from teacher;
select * from takes;
select * from course;
select * from payment;
insert into payment (madeBy, requiredFor, total_amount, amount_paid, due_amount) values
(2, 3, 3000, 2000, 1000);

update teacher 
set joining_date = null, salary = null, status = 'inactive'
where teacher_id = 3; 

update user
set password = '35f6342ec3b11c2c5a0225764389b2ed13588ee38831b51a68fbf1c3534871aa'
where user_id = 6;

SELECT user_id, name, email, phone, role FROM user;

SELECT PASSWORD FROM USER WHERE EMAIL = 'supriyo8633@gmail.com';

delete from user where email = '1botulinum1@gmail.com';

delete from teacher where teacher_id = 2;

INSERT INTO User (name, role, email, phone, password) VALUES
('Rocky', 'Teacher', 'farzana2.csecu@gmail.com', '01712345678', 'pqr!@123');

INSERT INTO teacher (user_id, status) VALUES (2, 'inactive');
UPDATE Teacher
SET status = 'active', joining_date = '2024-11-25', salary = 50000.00
WHERE teacher_id = 1;





SELECT t.teacher_id, u.name, u.email, u.phone, t.joining_date, t.salary
FROM teacher t
join user u ON t.user_id = u.user_id
WHERE u.email='1botulinum1@gmail.com';

select t.status
from teacher t
join user u on u.user_id = t.user_id
where t.user_id = user_id;

delete from user where email = '1botulinum1@gmail.com';

SELECT s.student_id, u.name, s.father_name, s.mother_name, s.educational_qualification, s.date_of_birth, u.email, u.phone
FROM student s
JOIN user u on u.user_id = s.user_id;

SELECT student_id
FROM student
WHERE user_id = 3;

SELECT count(*)
FROM takes
where student_id = 1 && course_id = 3;


    
SELECT c.course_id, c.course_name, c.course_duration, c.course_fee, c.exam_name,
	CASE 
		WHEN c.course_id IN (
			SELECT t.course_id 
			FROM takes t 
			WHERE t.student_id = 1
		) THEN 'Enrolled'
		ELSE 'Not Enrolled'
	END AS status
FROM course c;

SELECT c.conductedBy, u.name
FROM course c
JOIN teacher t ON t.teacher_id = c.conductedBy
JOIN user u ON u.user_id = t.user_id
WHERE course_id = ?;

SELECT *
FROM Payment p
JOIN Course c ON p.requiredFor = c.course_id
WHERE p.madeBy = 2;

SELECT * 
FROM course c
JOIN teacher t ON c.conductedBy = t.teacher_id
WHERE teacher_id = 2;

SELECT COUNT(*) AS teacher FROM user WHERE role = 'teacher';