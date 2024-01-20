select * from sys.tables
select * from department;
select * from employee;
select name, city from employee as e inner join department as d on e.dept_id = d.dept_id; 
select * from employee as e left join department as d on e.dept_id = d.dept_id; 
select * from employee as e right join department as d on e.dept_id = d.dept_id; 
select * from employee as e full join department as d on e.dept_id = d.dept_id; 
select * from employee as e right join department as d on e.dept_id = d.dept_id; 
create  table employee(
id int identity(100,2) primary key,
name varchar (255) not null,
gender varchar (255) not null,
password varchar (255) not null,
city varchar (30) default 'karachi',
salary int not null,
dept_id int,
foreign key (dept_id) references department (dept_id)
);

INSERT INTO employee (name, gender, password, salary,dept_id) VALUES
    ('John Doe', 'Male', 'password123', 50000, 2),
    ('Jane Smith', 'Female', 'securepass', 60000,1),
    ('Bob Johnson', 'Male', 'pass123', 55000, 3),
    -- Add more records as needed

    ('Alice Anderson', 'Female', 'password456', 52000, 2),
    ('Charlie Brown', 'Male', 'myp@ss', 58000,3),
    ('Eva Williams', 'Female', 'letmein', 53000,1)
    -- Add more records as needed

    ('David Lee', 'Male', '12345pass', 56000),
    ('Sophie Miller', 'Female', 'secure@123', 59000),
    ('Frank White', 'Male', 'p@ssword', 54000),
    -- Add more records as needed

    ('Grace Taylor', 'Female', 'password789', 57000),
    ('Michael Clark', 'Male', 'access@123', 61000),
    ('Olivia Martin', 'Female', 'qwerty', 54000),
    -- Add more records as needed

    ('Daniel Turner', 'Male', 'pass1234', 55000),
    ('Emma Harris', 'Female', 'letmein567', 58000),
    ('George Adams', 'Male', 'password999', 52000),
    -- Add more records as needed

    ('Isabella Wright', 'Female', 'securepass1', 59000),
    ('Jackson Baker', 'Male', 'pass4321', 56000),
    ('Lily Johnson', 'Female', 'myp@ssword', 53000);
    -- Add more records as needed
