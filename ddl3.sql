describe lecturer;

-- Add column
Alter table lecturer
Add bonus double;

Alter table lecturer
Add middlename varchar(255) first;

Alter table lecturer
Add city text after age;

Alter table lecturer
Add email text first,
Add address varchar(255) after salary,
Add phone varchar(255);

-- Edit colum
Alter table lecturer
Modify column phone int not null;

Alter table lecturer
Modify column bonus float after salary;
-- Delete column
Alter table lecturer
Drop column phone;

Alter table lecturer
Drop column middlename,
Drop column firstname;
-- Rename column name
Alter table lecturer
change column hdate hireddate
date not null after lastname;

Alter table lecturer
change column firstname fname
varchar(255);
-- Rename table name
Alter table instructor
Rename to lecturer;

Alter table employee
Rename to engineer;
-- Rename table name
Rename table students to studentdata;
Rename table engineer to emp;

