create table person(
id int auto_increment primary key,
fullname varchar(255) not null,
age int,
check (age>=18),
birthdate date,
check (birthdate>'2001-01-01'),
height float,
check(height
<1.80));

describe lecturer;

Alter table lecturer
Add check(age>21);

create table product(
id int primary key auto_increment,
pname varchar(255),
category varchar(255) default 'Electronics',
shipped enum('yes', 'no') default 'no',
address varchar(255) default 'us',
price double default '1000',
listeddate timestamp default current_timestamp
);

ALTER TABLE product
Alter pname SET default 'iphone';

Alter table product
Add company varchar(255) default 'amazon';

describe people;

create table people(
id int auto_increment primary key,
fullname varchar(255),
age int,
ssn int unique,
creditcardnumber varchar(255) unique,
address varchar(255),
phone int unique,
email varchar(255) unique
);

Alter table people
Modify column address varchar(255) unique;

describe people;

drop table emp;
drop database crd;
DROP schema b;

