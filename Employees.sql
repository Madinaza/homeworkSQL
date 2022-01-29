create database Pricing


use Pricing


create table Pricing(
Id int primary key identity,
Price int 
)

insert into Pricing
values(10),
(20),
(30),
(45),
(22)


create table Feature(
Id int primary key identity,
Feature nvarchar(40),
Min int check(Min>=0),
Max int check(Max<=49)
)

insert into Feature
values('Free',0,0),
('Business',1,29),
('Developer',29,49)


create table PriceFeature(
	Id int primary key identity,
	PriceId int foreign key references Pricing(Id),
	FeatureId int foreign key references Feature(Id)
)

insert into PriceFeature
values(1,2),


