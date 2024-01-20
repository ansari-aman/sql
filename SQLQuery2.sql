use aman;
select * from emp;

alter table emp add designations varchar (255);
alter table emp  drop column designations;
alter table emp alter column city varchar (30);

update emp set name = 'qari sahab' where id = 1004;
delete from emp where id = 1014;
UPDATE emp SET salary = salary * 1.05 WHERE id = 1002 OR id = 1004  OR id = 1006;
select * from emp where id >= 1012;
select id, name, email, gender from emp where id != 1002;

select id, name, email, gender from emp where id in (1002, 1004, 1006);
