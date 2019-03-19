use myFamily;
create table familyMember(
id int primary key auto_increment not null,
name varchar(25) default "noname",
age int default 0,
gender varchar(6)
);
insert into familyMember (name, age, gender)
values
       ('Vitalii', 23, 'male'),
       ('Olenka', 13, 'female'),
       ('Oleksiy', 42, 'male'),
       ('Tanya', 42, 'female');
select * from familyMember where age <3 or age > 15;
update familyMember set age = 20 where id = 1;
select * from familyMember;
delete from familyMember where name like '__e%';
drop table familyMember;
drop database myFamily;
