create database Product_Brands

use Product_Brands

create table Product(
Id int primary key identity,
Name nvarchar(30) ,
Price int,
)

insert into Brands
values('Hp'),
('ASUS'),
('Lenovo'),
('Apple')


insert into Product
values('Noutbuk HP PAVILION 15',1400),
('Noutbuk HP PAVILION 13',1200),
('Noutbuk HP ENVY X360 ',1500),
('Noutbuk Asus AU',1000),
('Noutbuk Asus bbbb',900),
('Noutbuk Lenove ',1900),
('Apple MacBook PRO 16' ,2500),
('Apple MacBook PRO 12' ,2000)


alter table Product
add BrandId int constraint BrandProduct foreign key references Brands(Id) 

select * from Product


select p.Id, p.Name from Product  p
Inner join Brands b
on p.BrandId = b.Id


select * from Brands b
full join Product p
on p.BrandId = b.Id

create table Brands(
Id int primary key identity,
Name nvarchar(20),
)