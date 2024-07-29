create database ass1;
use ass1;

create table students(s_id int primary key,s_name varchar(20),s_age int);

insert into students(s_id,s_name,s_age) values(1,"Ram", 21);
insert into students(s_id,s_name,s_age) values(2,"Shamam", 21);

select * from students;
