create database Project1;
use project1;

create table lecture (LecturerId int,
FirstName varchar(255),
LastName varchar(255),
Age int,
Salary double,
Department enum('Qa','Muel','Fullstack'),
SSN int,
HiraeDate date,
Gender enum('male','female'),
status boolean
);

describe Lecture;

create table students
(
StudentId int,
StudentName varchar(255) Not Null,
ParentName varchar(255)Not Null,
Address varchar(255)Not Null,
PostalCode varchar(255),
City varchar(255)Not Null
);

describe lecturer;
alter table lecturere
add Bonus double ;

Alter table lecturere
rename to lecturer;

create table person 
(ID int auto_increment primary key,
FullName varchar(255) not null,
Age int,
check (Age>=18),
BirthDate date,
Check(BirthDate>'2001-01-01'),
height float,
check (height<1.80));

describe Product;

Create table Product
(Id int primary key auto_increment,
Pname varchar(255),
Catagory varchar(255) default 'Electronics',
Shipped enum('Yes','no') default 'no',
Address varchar(255) default'us',
Price double default '1000',
ListDate timestamp default current_timestamp
);

Alter table product
Alter Pname Set default 'Iphone';


Create table people
(
ID int  auto_increment primary key,
FullName varchar(255),
Age int,
SSN int unique,
CreditCardNumber varchar(255),
Address varchar(255),
Phone varchar(255) unique,
Email varchar(255)
);

describe People;

show databases;


-- add column Using alter 

describe customers;
-- Name= bonus;
-- DataType= Integer
-- check >100
-- after custid
-- default 1000
-- unique
-- It doesn't accept null value;
alter table customers
drop column bonus;

alter table customers
add bonus int default'1000' not null after cust_ID,
add check (Bonus>'100');

describe customers;

-- add Customer_date column Using alter --datatype = timestamp--default current timestamp--unique--first
alter table customers
add Customer_date timestamp default current_timestamp unique first;

-- modify column using alter
-- Name = Age
-- default = 18
-- check >18
-- Datatype = Integer,
-- to not accept null value

alter table customers
modify Cust_Age int not null 
check (Cust_Age>18) default '18';

-- Delete column using alter
-- Name = NickName
-- Name = bonus

alter table customers
drop Cust_NickName,
drop bonus;

describe customer;

-- Rename Customers Table to Customer Table

alter table customers
rename to customer;


-- Drop table Customer;

drop table customer;

-- Drop DataBase/schema

drop database mydb;

-- Again Recreate Schema/DataBase MyDB after we Drop the schema

create database mydb

-- Again Recreate the table Customers with all of it columns after we Drop the customer table































