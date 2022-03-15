use mydb;

-- 1.Create a table  name Address inside MyDB Database

create table address
(Cust_ZIP varchar(50) unique not null, 
Cust_Street  varchar(50)not null,
Cust_City  varchar(50) not null,
Cust_State varchar(50),
Cust_ID int,
 constraint fk_1 foreign key(cust_id) references customers(Cust_id)
);
-- unique identifies each record in a table by Cust_ZIP
-- The Customers table and Address table are connected by Cust_ID

-- 2.Insert the following Data in to Address table

insert into address(Cust_zip,Cust_street,cust_city,cust_state,cust_id)
values(1000,'Megenagna','Addis Ababa','Addis Abab',444),
(2000,'4-kilo','Addis Ababa','Addis Ababa',555),
(3000,'41-eyesus','Addis Ababa','Addis Ababa',888),
(4000,'6-kilo','Addis Ababa','Addis Ababa',333),
(5000,'01-st','San Diego','California',null),
(6000,'kU-road','Los Angeles','California',null),
(7000,'JK-road','Miami','Florida',null),
(8000,'Lj-road','Atlanta','Georgia',null);

select*
from Address;

-- 3.Write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and 
-- FULL OUTER JOIN on this table and customer table (the one u created in the previous quizzes)

select*
from customers;
-- inner join
select customers.cust_id,Address.cust_id
from address
inner join customers
on customers.cust_id = address.cust_id;

-- left join

select customers.cust_id,Address.cust_id
from address
left join  customers
on customers.cust_id = address.cust_id;

-- right join
select customers.cust_id,Address.cust_id
from address
right join customers
on customers.cust_id = address.cust_id;

-- full outer join
select customers.cust_id,Address.cust_id
from address
left join  customers
on customers.cust_id = address.cust_id
union
select customers.cust_id,Address.cust_id
from address
right join customers
on customers.cust_id = address.cust_id;

-- 4.Count the number of customers by their city (group by)

select count(*) as numberofcountry,cust_country
from customers
group by cust_country;

-- 5.Create an index called index_1 on street and state columns

create index index_1
on address(cust_street,cust_state);

-- 6.show indexes on address table

show indexes from address;

-- drop the index_1

alter table address
drop index index_1;

-- 7.Create a view called customer_addis on customers that come from Addis Ababa

create view customer_addis
as
select*
from customers
where cust_country ='Ethiopia';

-- 8.Query customer_addis view
select*
from customer_addis;

select*
from Customers;

-- 9.Update customer_addis view by using a query => customers that come from Miami

create or replace view customer_addis
as
select*
from customers 
where cust_country='France';

-- 10.Drop customer_addis view

drop view customer_addis;
select*
from customer_addis;





















