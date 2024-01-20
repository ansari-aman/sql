create database aptech;
use aptech;
create table std(
id int primary key,
name varchar (255),
email varchar (255),
password varchar (255)
);

insert into std(id, name, email, password)values(1, 'aman', 'aman123@gmail.com', 'aman123');
select * from std;

create  table employee(
id int not null unique identity,
emp_name varchar (255) not null,
emp_age int check(emp_age > 18),
emp_city varchar (255) default 'karachi',
emp_gender varchar (1)
); 
select * from employee;

insert into employee(emp_name, emp_age, emp_gender) values('qari zulqarnain', 33,'M');


