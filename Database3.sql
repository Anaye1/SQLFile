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





















