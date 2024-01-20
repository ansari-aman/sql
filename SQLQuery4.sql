select * from Employees;
select * from Departments;


	
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
	emp_id int,
	foreign key (emp_id) references Departments (DepartmentID)
);



INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary, emp_id)
VALUES
    (1, 'John', 'Doe', 1, 60000.00,1),
    (2, 'Jane', 'Smith', 2, 55000.00,2),
    (3, 'Mike', 'Johnson', 1, 65000.00, 3),
    (4, 'Emily', 'Williams', 3, 70000.00,1),
    (5, 'David', 'Brown', 2, 50000.00, 2),
    (6, 'Sarah', 'Miller', 1, 62000.00,3),
    (7, 'Chris', 'Wilson', 3, 75000.00,2),
    (8, 'Anna', 'Jones', 2, 53000.00,3),
    (9, 'Brian', 'Taylor', 1, 58000.00,1),
    (10, 'Laura', 'Anderson', 3, 72000.00,3);


	CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');

create table projects(
ProjectID int identity primary key,
ProjectName varchar (255) not null,
StartDate date
);

insert into projects(ProjectName, StartDate) values ('SQL Server', '1/18/2024'),('laravell project', '1/19/2024'),
('php project', '1/20/2024'), ('js project', '1/21/2024'), ('Database', '1/22/2024');

select * from projects where ProjectName like '%Database%';


select * from projects;

select * from Employees where Salary > 5000;

select * from Employees where LastName like 'S%';
select sum (Salary) from Employees;

select FirstName, LastName, DepartmentName from Employees as e inner join Departments as d on e.EmployeeID = d.DepartmentID;


select *from Employees as e inner join Departments as d on e.EmployeeID = d.DepartmentID;


create login aman with password = 'ayan';
create user ahmad for login aman;
grant select, update, insert on dbo.Employees to ahmad;
revoke update from ahmad;
deny update , insert on dbo.Employees to ahmad;

create login qari with password = 'bablu bacha';
create user zulqarnain for login qari;
grant select, update, alter, all  to zulqarnain;
revoke alter, all from zulqarnain;
deny update, all to zulqarnain;
