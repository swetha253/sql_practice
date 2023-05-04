-- creating database and its name
-- create database rgm;

-- create table student( 
-- student_id int primary key not null,
-- student_name varchar(30) not null,
-- student_contact int not null,
-- student_dept varchar(25) not null
-- );
-- INSERT INTO student values(102,"swe",837428,"cse");
INSERT INTO student values(104,"jyo",763428,"cse");
INSERT INTO student values(103,"kittu",89327,"ece");
INSERT INTO student values(178,"sushu",38421,"ece");
INSERT INTO student values(107,"yash",73268,"mech");
INSERT INTO student values(109,"sukku",125312,"civil");
insert into student values (112,"raj",74734,"cseds"),(122,"anu",74833,"aiml"),(223,"mahi",837483,"eee");
select * from student;
create database HeroVired;
create table RGM(
id int primary key not null,
name varchar(30) not null,
college varchar(39) not null,
session varchar(39) not null,
contact varchar(30) not null,
address varchar(50) not null
)
select * from RGM;
insert into RGM values(12,"swetha","rgm","sql",32774289,"tdp"),(13,"jyo","svne","python","738913","atp" );
insert into RGM values(23,"sushu","svit","java",4732918,"ndl"),(24,"sukku","svr","java",81298341,"knl"),(54,"yashu","ksrm","full stack",4930324,"knl"),(45,"kittu","pvkk","dsa",8930231,"tdp");
insert into RGM values (56,"raj","rgm","python",93481,"ndl"),(34,"anu","svne","full stack",38752,"atp"),(28,"mahi","ksrm","sql",827324,"tdp");
-- find all the rows where session is equal to java
select * from rgm where session="java";
select id,name,session from rgm where session="java";
select * from rgm where session="java" and address="ndl";
select * from rgm where name like "s%";
select * from rgm where name like "a%u";
select * from rgm where name like "sw%";
select * from rgm where name like "%a";
select * from rgm where name like "_i%";
select * from rgm where name not like "s%";
select * from rgm where address in ("atp","knl");
select * from rgm where college ="rgm" and college="svne";
select * from rgm where college ="rgm" or college="svne";
create table student(
id int primary key not null,
name varchar(30) not null,
marks int not null);
insert into student values(388,"sukku",78),(848,"sushu",56),(23,"om",894);
select * from student;
select * from student where marks=79;
select * from student where marks<79;
select * from student where marks<=79;
select * from student where marks>79;
select * from student where marks!=98;
select * from student where marks<>79; -- not equal to symbol <>
select * from student where marks between 50 and 89;
select * from student where marks between 50 and 89 order by marks;
-- ascending order
select * from student where marks between 50 and 89 order by marks ASC;
select * from student where marks between 50 and 89 order by marks desc;
select * from student where not marks=89;
select * from rgm;
select distinct address from rgm;
select count(distinct address) from rgm;
select count(distinct marks) from student;
select* from student where not marks=79 and not marks=89;
select * from rgm limit 3;
select * from rgm where address="knl" limit 1;
select * from rgm order by address="knl" limit 2;
select count(address),address from rgm group by address;
select * from rgm where college="rgm" order by id desc limit 3;
create table DOB(
date_ date not null);
insert into dob values('2023-03-25'); 
select * from dob;
create table  sales(
salesman_id int primary key not null,
name_ varchar(30) not null,
city  varchar(30) not null,
commission real not null);
insert into sales values(123,"swetha","tdp",0.15),(234,"sushu","atp",0.23);
select * from sales;
select commission,name_ from sales;select commission,name_ from sales;





