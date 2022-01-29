create database portfolio
use portfolio

create table Portfolio(
Id int primary key identity,
PortfolioName nvarchar(30),
)
create table Image(
Id int primary key identity,
ImageName nvarchar(30),
)
create table PortImage(
 Id int primary key identity,
 PortfolioId int foreign key references Portfolio(Id),
ImageId int foreign key references Image(Id)
)

 insert into Portfolio
 values('Porfolio1'),
 ('Porfolio2'),
 ('Porfolio3'),
 ('Porfolio4')

insert into Image
 values('soup'),
 ('cream'),
 ('perfume'),
 ('bootle'),
 ('cocooil'),
  ('food'),
  ('aerin'),
  ('tea')

  insert into PortImage
  values(1,1),
  (1,2),
   (1,3),
   (2,2),
   (2,4),
   (3,5),
  (3,4),
  (3,3),
  (4,5),
  (4,2),
  (4,4),
  (4,7),
  (4,6)

  select p.Id, p.PortfolioName ,I.ImageName from PortImage pi
join Portfolio p
on pi.PortfolioId = p.Id
join Image I
on pi.ImageId  = I.Id


create table Category(
Id int primary key identity,
CategoryName nvarchar(30),
)

 insert into Category
 values('ALL'),
 ('APP'),
 ('CARD'),
 ('WEB')

 alter table Portfolio
add CategroyId int foreign key references Category(Id) 



