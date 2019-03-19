create database relationship;
use relationship;
create table Unicorns(
  Id int primary key auto_increment not null,
  Name varchar(25),
  Color varchar(25)
);
alter table Unicorns rename column  id to unicornId;

create table Forests(
  forestId int primary key auto_increment not null,
  forestName varchar(25),
  forestLocation varchar(25)
);
create table unicornsForests(
  Id int primary key auto_increment not null,
  forestId int,
  unicornId int,
  foreign key xxx(forestId) references Forests(forestId),
  foreign key zzz(unicornId) references Unicorns(id)
);

insert into Unicorns(name, color)
VALUES('Panelopa','Green'),
('Wayne','Yellow'),
('Anelia','White'),
('Brush','Red');

insert into Forests(forestName, forestLocation)
VALUES ('Big forest','London'),
       ('Grey wisp','New York'),
       ('Brykhovickiy lis','Lviv'),
       ('The great forest','Berlin');

insert into unicornsForests(forestId, unicornId) VALUES
(1,3),
(2,4),
(3,2),
(4,2);
insert into unicornsForests(forestId, unicornId) VALUES
(2,3),
(2,4),
(1,2),
(1,2);

select count(uF.unicornId) as AmountofUnicorns, forestName from Unicorns
join unicornsForests uF on Unicorns.unicornId = uF.unicornId
join Forests F on uF.forestId = F.forestId
group by forestName;