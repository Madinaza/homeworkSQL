create database secondTask
use secondTask

create table Pricing(
Id int primary key identity,
Price int,
)

create table Feature(
Id int primary key identity,
Feature nvarchar(50) not null,	
)

create table PricingFature(
	Id int primary key identity,
	PrincingId int foreign key references Pricing(Id),
	FatureId int foreign key references Feature(Id)
)

insert into Feature
values('Quam adipiscing vitae proin'),
('Nec feugiat nisl pretium'),
('Nulla at volutpat diam uteera'),
('Pharetra massa massa ultricies'),
('Massa ultricies mi quis hendrerit'),
('Massa ultricies mi quis developer'),
('Pharetra massa massa depelover')

insert into Pricing
values(0),
(29),
(49)

insert into PricingFature
values(1,1),
(1,2),
(1,3),
(2,3),
(2,4),
(2,5),
(3,1),
(3,6),
(3,7)


select f.Feature ,p.Price  from PricingFature pf
join Feature f
on pf.FatureId = f.Id
join Pricing p
on pf.PrincingId = p.Id
