create database Portfolio_Image

use Portfolio_Image

create table Portfolio(
Id int primary key identity,
PortfolioName nvarchar(30),
)
create table Category(
Id int primary key identity,
CategoryName nvarchar(30),
)
create table Image(
Id int primary key identity,
ImageName nvarchar(30),
)

create table PortCatImage(
 Id int primary key identity,
 PortfolioId int foreign key references Portfolio(Id),
CategoryId int foreign key references Category(Id),
ImageId int foreign key references Image(Id)
)

 insert into Portfolio
 values('Porfolio1'),
 ('Porfolio2'),
 ('Porfolio3'),
 ('Porfolio4')

  insert into Category
 values('ALL'),
 ('APP'),
 ('CARD'),
 ('WEB')

  insert into Image
 values('soup'),
 ('cream'),
 ('perfume'),
 ('bootle'),
 ('cocooil'),
  ('food'),
  ('aerin'),
  ('tea')

  insert into PortCatImage
  values(1,1,1),
  (1,2,3),
   (1,2,4),
   (2,2,4),
   (2,2,5),
   (3,4,7),
  (3,4,5),
  (3,3,6),
  (1,4,6),
  (4,2,4),
  (4,4,4),
  (4,2,7),
  (4,2,6)
					

select p.Id,  p.PortfolioName , c.CategoryName from PortCatImage pci
join Portfolio p
on pci.PortfolioId = p.Id
join Category c
on pci.PortfolioId  = c.Id





  