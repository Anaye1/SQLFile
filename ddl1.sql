create database craftknowledge;

use craftknowledge;
describe lecturer;
create table lecturer(
lid int auto_increment,
firstname varchar(255),
lastname varchar(255),
age int,
salary double,
departement enum('qa', 'mule', 'full stack java'),
ssn int, 
hdate date,
gender enum('male', 'female'),
status boolean,
primary key(lid)
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

Alter table manager
Modify column firstname varchar(255);

drop table students;
describe manager;
use craftspring;
create table manager 
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
