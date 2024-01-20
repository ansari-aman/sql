select * from Departments;
update Departments set DepartmentName = 'ahsan' WHERE DepartmentID = 1;
select * from Employees;
update Employees set LastName = 'ahsan' WHERE EmployeeID = 1;


select * from projects;
update projects set ProjectName = 'ahsan' WHERE ProjectID = 1;
alter table projects add password varchar (255);
alter table dbo.projects add name varchar (255);
select * from Department;
