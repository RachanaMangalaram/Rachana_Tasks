create database school_management;

use school_management;

create table students(student_id int primary key, first_name varchar(20), last_name varchar(20), email varchar(20), phone_number int, date_of_birth date);

create table courses(course_id int primary key, course_name varchar(20), course_description varchar(20), credits int);

alter table students add grade varchar(2);

alter table students modify phone_number varchar(15);

insert into students values(1,'Rachana','Mangalaram','rachana@gmail.com','9578445789','2002-07-22','A'),(2,'Lavanya','Mangalaram','lavanya@gmail.com','7944837859','1999-12-30','B'),
(3,'Aishwarya','Mangalaram','aishu@gmail.com','7972959362','2007-8-01','C');

insert into courses values(1,'CSE','Computer Science',6),
(2,'ENTC','Electronics',5),
(3,'CE','Civil',3),
(4,'IT','Information Tech',6),
(5,'EE','Electrical',5);


select first_name , last_name , email from students;

drop table students;

drop database school_management;