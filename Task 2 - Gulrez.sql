create schema School;
-------------------------------------------------------------
create table Students (
    student_id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    age int,
    department varchar(100),
    email varchar(100),
    gpa numeric(3,2)
);
---------------------------------------------------------
create table Courses (
    course_id serial primary key,
    course_name varchar(100),
    department varchar(100),
    semester varchar(20)
);
--------------------------------------------------------------------
create table Enrollments (
    enrollment_id serial primary key,
    student_id int references students(student_id),
    course_id int references courses(course_id),
    semester varchar(20),
    grade char(1)
);
-----------------------------------------------------------------------------
insert into Students
(first_name, last_name, age, department, email, gpa)
values
('student1', 'ahmed', 18, 'computer science', 'student1@university.edu', 3.85),
('student2', 'ali', 19, 'economics', 'student2@university.edu', 3.45),
('student3', 'sara', 20, 'physics', 'student3@university.edu', 3.92),
('student4', 'hassan', 21, 'computer science', 'student4@university.edu', 3.60),
('student5', 'ayesha', 18, 'economics', 'student5@university.edu', 3.25),
('student6', 'usman', 22, 'physics', 'student6@university.edu', 2.95),
('student7', 'fatima', 19, 'computer science', 'student7@university.edu', 3.75),
('student8', 'bilal', 20, 'economics', 'student8@university.edu', 3.55),
('student9', 'zainab', 21, 'physics', 'student9@university.edu', 3.10),
('student10', 'hamza', 19, 'computer science', 'student10@university.edu', 3.40),
('student11', 'mariam', 18, 'economics', 'student11@university.edu', 3.88),
('student12', 'omar', 22, 'computer science', 'student12@university.edu', 2.85),
('student13', 'laiba', 20, 'physics', 'student13@university.edu', 3.70),
('student14', 'danish', 19, 'computer science', 'student14@gmail.com', 3.95),
('student15', 'hira', 21, 'economics', 'student15@university.edu', 3.15);
-----------------------------------------------------------------------------------------------
insert into Courses
(course_name, department, semester)
values
('database systems', 'computer science', 'fall 2025'),
('programming fundamentals', 'computer science', 'fall 2025'),
('data structures', 'computer science', 'spring 2025'),
('microeconomics', 'economics', 'fall 2025'),
('macroeconomics', 'economics', 'fall 2025'),
('econometrics', 'economics', 'spring 2025'),
('quantum physics', 'physics', 'fall 2025'),
('classical mechanics', 'physics', 'spring 2025');
---------------------------------------------------------------------
insert into Enrollments
(student_id, course_id, semester, grade)
values
(1, 1, 'fall 2025', 'a'),
(1, 2, 'fall 2025', 'b'),
(2, 4, 'fall 2025', 'a'),
(3, 7, 'fall 2025', 'a'),
(4, 1, 'fall 2025', 'b'),
(5, 5, 'fall 2025', 'c'),
(6, 8, 'spring 2025', 'b'),
(7, 2, 'fall 2025', 'a'),
(8, 4, 'fall 2025', 'b'),
(9, 7, 'fall 2025', 'c'),
(10, 3, 'spring 2025', 'b'),
(11, 6, 'spring 2025', 'a'),
(12, 1, 'fall 2025', 'c'),
(13, 7, 'fall 2025', 'a'),
(14, 2, 'fall 2025', 'a'),
(15, 5, 'fall 2025', 'b');
-----------------------------------------
select * from students
where department = 'computer science';
----------------------------------------------
select * from students
where gpa > 3.5;
--------------------------------------
select * from courses
where department = 'economics';
---------------------------------
select * from students
order by gpa desc limit 5;
-----------------------------------------
select * from students
where age > 18 and age < 21;
----------------------------------
select * from students
where email like '%@university.edu';
----------------------------------------------------
select distinct department
from courses;
-----------------------------------
select * from students
where gpa not between 3.0 and 3.8;
----------------------------------------------
Select * from students
where first_name like 'student1%';
-------------------------------------
select * from Students;
update students
set gpa = 3.90 where first_name = 'student10';
------------------------------------------------------
delete from enrollments
where grade = 'c';
select * from enrollments;
-------------------------------
alter table students
add column phone varchar(15);
-----------------------------------
drop table enrollments;
select * from enrollments;
----------------------------------
select * from students
where department <> 'physics';
------------------------------------------------------------
select * from students
order by gpa desc limit 3;
-------------------------------
select department, avg(gpa) as average_gpa from students group by department;
----------------------------------------------------------------------------------
select * from students
where age < 20 and gpa > 3.5;