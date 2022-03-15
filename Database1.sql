use project1;

describe students;

Alter table Students
modify column Address varchar(255) Null;

Drop table students;

create table Students
(StudentID int auto_increment primary key,
StudentName varchar(255) not null,
ParentName varchar(255) not null,
Address varchar(255) not null,
PostalCode int,
City varchar(255)
);

drop table Lecturer;
create table project1.lecturere
(LecturerId int auto_increment, primary key,
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

describe table Lecturer;







