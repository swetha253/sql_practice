show databases;
select * from rgm;
update rgm set name="kajal" where contact=93481;
update rgm set session="flat" , address="ctr" where contact=81298341; 
select * from student;
create table test(id int primary key,name varchar(38) not null,marks int not null);
 select * from test;
 insert into test select * from student;  -- copy student data into the  test table
 insert into test select * from herovired.student; -- if tables are in different database
 truncate table test;
 delete from student where name="krish";
 drop table test;
 alter table student rename column name to s_name;
 alter table student rename to rgm_student; 
 select * from rgm_student;
 show databases;
 show tables;
 create database hero;
 drop database hero;
 alter table rgm_student add address varchar(30);
 update rgm_student set address="knl" where id=23;
 alter table rgm_student modify column address varchar(50);
 alter table rgm_student drop column address;
 alter table rgm_student drop column address,drop column field;
 delete from student; -- delete data
 select max(marks) from rgm_student;
 select min(marks) from rgm_student;
 select sum(marks) from rgm_student;
 select avg(marks) from rgm_student;
 select count(marks) from rgm_student;
 select sum(marks) as total from rgm_student;
 create database exercise;
 create table customer (id int primary key,name varchar(20),city varchar(20),rate int,salesman_id int);
 insert into customer values (1,"swetha","kerela",200,205),(2,"kittu","banglore",298,206),(3,"jyo","chennai",342,838),(4,"yash","karnataka",234,654),(5,"sukku","hyderabad",654,657),(6,"sushu","goa",123,298),(7,"anu","mumbai",324,786);
 -- write a sql query to find out the details of customer whose rate is above 500?
 select * from customer where rate>=300;
 select * from customer where rate>=300 order by rate;
 select * from customer where rate >=300 and city="chennai";
 -- to find customer details who are either from kerala city or who do not have a grade more than  300
 select * from customer where city="kerala" or not rate>=300;
 -- to find customer details who do not from mumbai city or who  have a grade more than  300
 select * from customer where not city="mumbai" or rate>300;
 select * from customer where not city="mumbai" and rate>300;
 select * from customer where not city="mumbai" and not rate>300;
 -- find the order details excluding the date and salesman_id more than 105 or purchase amount lessthan than 1000
 create table orders (
 order_num int,purchase_amt int,order_date date ,c_id int, s_id int);
 insert into orders values (200,1000,"2023-04-23",100,200),(201,1500,"2023-05-21",102,203),(203,2000,"2023-03-25",103,204),(207,900,"2023-02-28",106,209);
 select * from orders;
 select * from orders where not order_date='2023-04-23' and s_id>204 or purchase_amt>1000; 
 create table salesman (s_id int primary key ,name varchar(30),city varchar(30),commission float);
 insert into salesman values(101,"swetha","hyd",0.23),(102,"sushu","goa",0.43),(103,"kittu","kerala",0.34);
 select * from salesman;
 select * from salesman where commission between 0.3 and 0.4;
 select * from salesman where name like 'k%';
 alter table salesman add address varchar(30);
update salesman set address="andhra" where name="swetha";
update salesman set address="chennai" where name="sushu";
update salesman set address="punjab" where name="kittu";
select address as s_address from salesman order by address desc;

