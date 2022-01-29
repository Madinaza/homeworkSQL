create database againEmployees
use againEmployees

create table Employees(
Id int primary key identity,
Fullname nvarchar(30) not null constraint employee check(Len(Fullname)>=3),
Salary int
)
alter table Employees
add constraint check_salary check(Salary>0)


create table Department(
Id int primary key identity,
Name nvarchar(30)  constraint depname check(Len(Name)>=2),
)
alter table Employees
add DepartmentId int  foreign key references Department(Id) 

select e.Fullname ,e.Salary,d.Name from Employees  e
Inner join Department d
on e.DepartmentId = d.Id
