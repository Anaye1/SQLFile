/*Create database*/
create database craftknowledge;
/* use craftknowledge database to create table*/
use craftknowledge;
/* Display Lecturer table*/
describe lecturer;
/*Create table name Lecturer and column name with the datatype*/
create table lecturer(
lid int auto_increment, -- auto-increament means the Id is incrmented automaticaly by 1 only. 
firstname varchar(255),
lastname varchar(255),
age int,
salary double,
departement enum('qa', 'mule', 'full stack java'),
ssn int, 
hdate date,
gender enum('male', 'female'),
status boolean,
primary key(lid) -- add primary key on the lecturer ID which is the Identity Id it is by default not null
);



Create TABLE Students(
 StudentID int auto_increment primary key,
 StudentName varchar(255) Not null,
 ParentName varchar(255) Not null,
 Address varchar(255) not null,
 PostalCode int,
 City varchar(255) not null
 );
 describe Students;
 
 
 describe students;

Alter table manager -- edit the manager table and modify the column that we want to modify.
Modify column firstname varchar(255);

drop table students; -- Delete table
describe manager;
use craftspring;
create table manager -- Take a tamplate from manager table some columns or all columns also possible to save the time.
as 
select firstname, lastname, age, salary, gender
from lecturer;

describe students;

create table b.candidates
as
select * from craftknowledge.students;



describe b.candidates;

create table employee(
empid int,
empname varchar(255),
primary key(empid, empname)
);
describe employee;


describe manager;

Alter table manager
Add primary key(firstname);


Alter table manager
drop primary key;


Create database MyDB;

use MyDB;

Create table customers
(
 Cust_ID int primary key  auto_increment, 
  Cust_FirstName varchar(255) not null,
  Cust_LastName  Varchar(255) not null,
  Cust_NickName  varchar(255),       
  Cust_Age int,
  Cust_Gender char(10) not null,
  Cust_Country varchar(255) not null,
  Cust_Salary double not null
);
     
describe customers;




