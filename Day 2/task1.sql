create database day2;

use day2;

create table Employees(EmployeeID int primary key,
FirstName varchar(50) not null,
LastName varchar(50) not null,
Email varchar(100) not null unique,
Salary int not null,
DepartmentID int
);

insert into Employees values(1,'John','Doe','john.doe@company.com',60000,1),
(2,'Jane','Smith','jane.smith@company.com',75000,2),
(3,'Michael','Johnson','michael.johnson@company.com',85000,1),
(4,'Emily','Williams','emily.williams@company.com',72000,3),
(5,'David','Brown','david.brown@company.com',65000,2),
(6,'Sarah','Davis','sarah.davis@company.com',90000,3);

select * from Employees;

create table Departments(DepartmentID int primary key,
DepartmentName varchar(50) not null);

insert into Departments values
(1,'Marketing'),
(2,'Sales'),
(3,'IT'),
(4,'Finance'),
(5,'HR');

select * from Departments;

create table Projects(ProjectID int primary key,
ProjectName varchar(100) not null,
DepartmentID int,
foreign key (DepartmentID)  references Departments(DepartmentID)
);

insert into Projects values
(1,'Project A', 1),
(2,'Project B',2),
(3,'Project C',3),
(4,'Project D',4),
(5,'Project E',5);

select * from Projects;

alter table Employees add constraint c_salary check (salary>0);  #1

alter table Employees add foreign key(DepartmentID) references Departments(DepartmentID); #2

alter table Employees add unique(Email); #3(gives warning, says duplicate index as it is already defined as unique at the time of table creation)

alter table Departments add primary key(DepartmentID); #4 (gives error as it is already defined primary key)

alter table Projects add foreign key(DepartmentID) references Departments(DepartmentID); #5

insert into Employees values(7,'Rachana','Mangalaram','rachu@gmail.com',80766,6); #6(gives error, says cannot add or update)

insert into Employees values(7,'Lavanya','Gundeli','sarah.davis@company.com',7675,1); #7(gives error, says duplicate entry sarah.davis@company.com)

delete from Departments where DepartmentID=1; #8(gives error, says, cannot delete or update a parent row: a foreign key constraint)

update Employees set DepartmentID=6 where EmployeeID=1; #9(gives error, says, cannot add or update a child row: a foreign key constraint)