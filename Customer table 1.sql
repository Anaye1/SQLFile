select*
from  customers;

describe customers;

-- 1. Insert the following Data in to Customers table

insert into customers(cust_id,Cust_FirstName,Cust_LastName,Cust_Age,Cust_Gender,Cust_Country,Cust_Salary)
Values(111,'Nicke','Jones',26,'M','USA',20000),
(222,'Anthony','Martial',24,'M','France',10000),
(333,'Nebiha','Amir','24','F','Uzbekistan',360000),
(444,'Sorena','HAilu',24,'M','Unknown',340000),
(555,'Beka','Haile',25,'M','Kazakhstan',4000),
(999,'Nick','Jones',26,'M','USA',20000),
(777,'Poul','Pegba',26,'M','France',20000),
(888,'Betty','G',27,'F','Ethiopia',70000);

-- 2. Update
-- Cust_ID=333,444,555 
-- Country to Ethiopian

update customers
set cust_Country= 'Ethiopian'
where cust_id =555 or cust_id= 333 or cust_id=444;
select * from customers;
update customers
set cust_Country= 'Ethiopia'
where cust_id =333;

update customers
set cust_Country= 'Ethiopia'
where cust_id =444;

-- 3. Delete
-- cust_Name=nick jones = cust_fistname=nick, cust_lastname=jones
-- Cust_ID is 777
Delete 
from customers
where cust_FirstName ='Nicke' and Cust_id=111 and Cust_LastName ='Jones';

-- 4.Retrieve customer data
select*
from  customers;

-- 5.Retrieve female customer data

select*
From customers
Where cust_Gender ='F';

-- 6.Retrieve female customer data whose salary is 30000
select*
From customers
Where cust_Gender ='F' and cust_salary>30000;

select*
From customers
Where cust_Gender ='F' and cust_salary>30000;

-- 7.Retrieve customer data in descending order by their salary
select*
from customers
order by Cust_Salary desc;

-- 8.Retrieve distinct gender 

select distinct customers
where gender ;

select distinct(Cust_Gender)
from customers;

-- 9.Retrieve customers that are not coming from France or Ethiopia

select*
from customers
where not (Cust_Country='Ethiopia'or Cust_Country = 'France');

-- 10.Retrieve customers data by their age in ascending order
Select*
from customers
order by cust_Age asc; 

-- 11.Retrieve male customers whose age is greater than or equal to 25
select*
from customers
where Cust_Gender ='M' and Cust_Age>=25;

-- 12.Retrieve male customers whose age is not equal to 24

select*
from customers
where Cust_Gender ='M' and Cust_Age!=24;

select*
From customers;

select min(Cust_Age) as MinimumAge, Cust_FirstName 
from Customers;

select Max(Cust_Age) as MaximumAge
from Customers;

select count(*) -- 
from customers
where Cust_Age>25;

select sum(Cust_Salary)
From customers;

select sum(Cust_Salary)
From customers
where Cust_Country ='Ethiopia';

select avg(Cust_Salary)
From customers
where Cust_Country ='Ethiopia';

select count(Cust_Salary)
From customers
where Cust_Country ='Ethiopia';

select Max(Cust_Salary)
From customers
where Cust_Country ='Ethiopia';

select MIN(Cust_Salary)
From customers
where Cust_Country ='Ethiopia';

select cust_Age, count(Cust_FirstName)
from customers;

-- 1.Write a query that display Minimum Salary from the table? == 4000

select min(Cust_Salary)
from customers;

-- 2.Write a query that display Maximum Fees from the table? == 27

select max(Cust_Age) 
from customers;

-- 3.Write a query that display Number of Customer We have in the table? == 7
select count(*)
from customers; 

-- 4.Write a query that display Average Salary from the record?== 117714.28571428571

select avg(Cust_Salary)
from customers;

-- 5.Write a query that display The sum of all customers Fees?==824000

select sum(Cust_Salary) as sumofsalary
from customers;

select*
From Customers
where Cust_Age between 25 and 30;

select*
from customers
where Cust_Salary between 10000 and 10000;

select*
from customers
where Cust_FirstName  Like 'a%';

select*
from customers
where Cust_FirstName  Like '%a%';

select*
from customers
where Cust_FirstName  Like 'a_%_%';

select*
from lecture
where email like '_%_%@%_.%';

select*
from customers
where Cust_Country in('Ethiopia','France','KAZ');

create database transactiondemo;
start transaction;
truncate customer;
select * from customer;
CREATE table customer(
Cust_ID int auto_increment primary key not null,
cust_firstname varchar(50) not null,
cust_lastname varchar(50) not null,
cust_nickname varchar(50),
cust_age int,
cust_gender char not null,
cust_country varchar(50) not null,
cust_salary decimal not null);

INSERT INTO customer (CUST_id, CUSt_FIRSTNAME, cUSt_LASTnAME, cust_AGE, CUST_GENDER, CUSt_COUNTRY, CUSt_SALARY )
values(	111, 'nick', 'Jones', 26, 'M', 'USA', 20000000),
(222, 'Anthony', 'Martial', 24, 'M', 'france', 10000000),
(333, 'Nebiha', 'Amir', 24, 'F', 'Uzbekistan', 36000000),
(444, 'Soresa', 'Hailu', 24, 'M', 'unknown', 34000000),
(555, 'Beka', 'Haile',25, 'M', 'Kazakistan', 400000),
(666, 'Nick', 'Jones', 26, 'M', 'USA', 20000000),
(777, 'poul', 'pogba', 26, 'M', 'France', 20000000),
(888, 'Betty', 'G', 27, 'F', 'Ethiopia', 70000000);

savepoint ins;

select * from customer;
update customer
set cust_country = 'Ethiopian'
where cust_id = 333 or cust_id = 444 or cust_id = 555;
savepoint upd;

select * from customer;


delete from customer
where cust_firstname = 'Nick' and cust_lastname = 'Jones' and Cust_id = 666;
savepoint del;

rollback to upd;
rollback to ins;
commit; 
  
  -- Write A Query for the following

select*
from Customer;

-- 1. Write a query that display all the record where there salary is between 2million and 8million?
select*
from customer
where cust_salary between 2000000 and 8000000;

-- 2. Write a query that display all the record where there firstName start with 'S'?
 
select*
from customer
where cust_firstname LIKE 's%';

-- 3. Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?

select*
from customer
where cust_firstname LIKE '_e%' and  cust_lastname LIKE '%e';

-- 4. Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?

select*
from customer
where cust_lastname LIKE 'P%a%';

-- 5.Write a query that display all the customers from Ethiopia, USA and France?

select*
from customer
where cust_country in('Ethiopia','USA','France');

-- 6.Write a query that display customers that have less salary than all of customers from Ethiopia.

select*
from customer
where cust_salary < ALL(select cust_salary from customer where cust_country = 'Ethiopia');

-- 7.Write a query that display customers that have less salary than any of the customers from Ethiopia.

select*
from customer
where cust_salary < Any(select cust_salary from customer where cust_country = 'Ethiopia');

 -- 8.Write a query that check whether the query* exists. 
 --   query* => select * from customers where cust_salary>50000
 
 select*
 from customer
 where exists(select* from customer where cust_salary > 50000) ;
 
 select*
 from customer
 where cust_salary>50000
 
 








