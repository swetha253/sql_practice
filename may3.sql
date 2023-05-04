select * from manager;
-- finding the second largest salary from manager
select name,salary from manager order by salary desc limit 1,1;
-- third largest
select name,salary from manager order by salary desc limit 2,1;
-- fifth largest
select name,salary from manager order by salary desc limit 4,1;
select * from orders;
create table order1(order_id int ,order_date date,c_id int);
create table customer1 (c_id int, c_name varchar(30),contact_name varchar(20),country varchar(30));
insert into order1 values(101,'2023-04-23',200),(102,'2023-04-12',202),(103,'2023-03-12',204),(104,'2023-05-04',205),(105,'2023-01-25',209);
insert into customer1 values(200,'swetha','sukku','india'),(203,'sweety','balu','england'),(204,'sushu','rai','britan'),(206,'thrisha','puja','finland'),(209,'suma','anu','pakistan');
select * from order1;
select * from customer1;
-- if we give order1.c_id and customer1.customer_id ,it will work==it means we can give different column names also
select order1.order_id,customer1.c_name,order1.order_date from order1
inner join customer1 on order1.c_id=customer1.c_id;
create table staff(id int ,name varchar(30),age int,package int);
create table payment(id int ,da_te date,staff_id int,amount int);
insert into staff values(201 ,'swetha',20,50000),(202,'sushu',23,43000),(203,'puja',21,45000),(205,'suma',34,80000),(206,'anu',27,540000);
insert into payment values(101,'2023-03-20',203,30000),(102,'2023-04-3',204,45000),(103,'2023-03-12',206,80000),(104,'2023-02-12',208,73294),(105,'2023-02-23',209,23098),(106,'2023-01-10',205,47888);
select s.id,name,age,amount from staff as s,payment p where s.id=p.staff_id;
alter table order1 add ship_id int;
ALTER TABLE ORDERS1 DROP COLUMN SHIPPING_ID;
UPDATE ORDER1 SET ship_id =3647 WHERE ORDER_ID = 101;
UPDATE ORDER1 SET ship_id =6743 WHERE ORDER_ID = 102;
UPDATE ORDER1 SET SHIP_ID =7844 WHERE ORDER_ID = 103;
UPDATE ORDER1 SET SHIP_ID =8978 WHERE ORDER_ID = 104;

CREATE TABLE SHIPPING(
SHIPPING_ID INT,NAME VARCHAR(30));
INSERT INTO SHIPPING VALUES(3647,'ABC'),(6743,'DEF'),(7844,'GHI'),(8978,'JKL');
SELECT * FROM ORDER1;
SELECT * FROM CUSTOMER1;
select * from shipping;
SELECT ORDER1.ORDER_ID,CUSTOMER1.C_NAME,SHIPPING.NAME FROM 
((ORDER1 INNER JOIN CUSTOMER1 ON ORDER1.C_ID=CUSTOMER1.C_ID)
INNER JOIN SHIPPING ON ORDER1.SHIP_ID = SHIPPING.SHIPPING_ID);
-- left join of order1 and customer1
select customer1.c_name,order1.order_id from customer1
left join order1 on customer1.c_id=order1.c_id;
-- right join
select c_name,country,order_date from customer1 right join order1 on customer1.c_id=order1.c_id;
select c_name,order_id from customer1
left join order1 on customer1.c_id=order1.c_id;
select c_name,order_id from customer1
left join order1 on customer1.c_id=order1.c_id order by customer1.c_name;  -- it will print english dictionary order
select customer1.c_name,order1.order_id from customer1
left join order1 on customer1.c_id=order1.c_id where customer1.c_name like 's%' order by customer1.c_name;
-- select c_name,order1.order_id from customer1 full join order1 on c_id=order1.c_id; not executed
select c_name,order_id from customer1
left join order1 on customer1.c_id=order1.c_id
union
select c_name,order_id from customer1
right join order1 on customer1.c_id=order1.c_id;
create table test(
id int primary key not null auto_increment,
c2 varchar(20) not null,
c3 varchar(30) default 'software engineer',
roomno int not null );
select * from test;


