create table car(car_no int ,car_name varchar(40),car_price int,car_quatity int);
insert into car values (112,'tesla',120000,2),(234,'bmw',340000,3),(114,'audi',250000,4),(543,'tata',120000,3),(119,'kia',230000,6);
insert into car values(123,'toyota',340000,2);
select * from car;
select count(car_name),car_price from car group by car_price;
select count(car_name) as count_number,car_price from car group by car_price;
select count(car_name) from car group by car_price having car_price>120000;
select count(*) from car group by car_price having car_price>120000;
create table visit(entry_date date,price int,duration int);
insert into visit values('2023-05-23',1000,20),('2023-04-12',4354,25),('2023-05-23',2000,30),('2023-06-24',3000,30),('2023-04-12',1500,15);
select * from visit;
select entry_date ,count(*) from visit group by entry_date;
-- round fun round the decimal points upto  2 decimals
select extract(year from entry_date) as year,extract(month from entry_date) as month,round(avg(price),2) from visit group by extract(year from entry_date),extract(month from entry_date); 
select extract(year from entry_date) as year,extract(month from entry_date) as month,round(avg(price),2) from visit group by extract(year from entry_date),extract(month from entry_date) order by extract(year from entry_date),extract(month from entry_date); 
select extract(year from entry_date) as year,extract(month from entry_date) as month,extract(day from entry_date) as day,round(avg(price),2) from visit group by extract(year from entry_date),extract(month from entry_date),extract(day from entry_date); 
select entry_date,round(avg(price),3) as avg_price from visit group by entry_date having count(*)>1 order by entry_date;
select entry_date,round(avg(price),3) as avg_price from visit group by entry_date having count(*)>3 order by entry_date;
insert into visit values('2023-05-23',2500,45);
select entry_date,round(avg(price),3) as avg_price from visit where duration>20 group by entry_date having count(*)>1 order by entry_date;
select * from exercise.customer;
select city ,count(*) as customer_city from customer group by city;
create table employee(emp_id int,name varchar(30),age int,country varchar(30));
insert into employee values(101,'swetha',25,'india'),(102,'yashu',24,'pakistan'),(103,'sukku',30,'england'),(105,'sushu',35,'finland'),(106,'anu',40,'britan');
insert into employee values(110,'sudha',50,'india'),(112,'kittu',36,'britan'); 
select count(country) as country_no ,country from employee group by country having count(country)>=2;
select country,count(country) from employee group by country having max(age)>=30;
select * from employee;
select country,count(country) from employee group by country having min(age)>=30;
create table manager(id int ,name varchar(30),gender varchar(20),age int,salary int);
insert into manager values(101,'swetha','f',20,50000),(102,'kittu','m',20,45000),(103,'krish','m',30,40000),(104,'anu','f',30,55000),(106,'jyo','f',35,25000);
select * from manager;
insert into manager values(122,'swetha','f',25,100000);
select name,sum(salary) as total_salary from manager group by name having sum(salary)>40000 order by name;
insert into manager values(125,'swetha','f',30,40000);
select age from manager group by age having count(age)>2;
select age from manager group by age having count(age)>1;
select gender,max(salary) as max_salary from manager group by gender having max(salary)<50000; -- doubt
select gender,min(salary) as min_salary from manager group by gender having min(salary)<50000;
DELIMITER //
create procedure GetManagerInfo()
 begin
     select * from manager;
end //
call GetManagerInfo()

DELIMITER //
create procedure GetManagerAge()
 begin
     select * from manager where age=20;
end //

call GetManagerAge()
-- rand() : it will pick randam name
select name from manager order by rand() limit 1;


 
    

