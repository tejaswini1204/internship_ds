create database VCET;
use VCET;
create table emp(
empno int,
empname varchar(20)
);
alter table emp add column age int;
insert into emp(empno,empname,age)values(1,'HETANSHI',20);
insert into emp(empno,empname,age)values(2,'DISHA',20);

ALTER TABLE emp ADD COLUMN salary int;
ALTER TABLE emp ADD COLUMN post VARCHAR(50);
UPDATE emp 
SET post = 
    CASE 
        WHEN empname = 'HETANSHI' THEN 'Manager'
        WHEN empname = 'DISHA' THEN 'Engineer'
        ELSE 'Employee'
    END;

select * from emp;

UPDATE emp 
SET salary = 
    CASE 
        WHEN empname = 'HETANSHI' THEN 230000
        WHEN empname = 'DISHA' THEN 290000
        ELSE 00
    END;

insert into emp(empno,empname,age,post,salary)values(3,'NEHA',20,'MANAGER',240000);
insert into emp(empno,empname,age,post,salary)values(4,'TANVI',20,'ENGINEER',20000);
insert into emp(empno,empname,age,post,salary)values(5,'TEJA',20,'EMPLOYEE',24000);
insert into emp(empno,empname,age,post,salary)values(6,'ASH',20,'CLERK',2000);
insert into emp(empno,empname,age,post,salary)values(7,'ANI',21,'DANCER',2100);
insert into emp(empno,empname,age,post,salary)values(8,'TAN',22,'SINGER',2200);

select count(empname) from emp;
select sum(salary) from emp;
select avg(salary) from emp;
select min(salary) from emp;
select max(salary) from emp;


select * from emp where salary between 2000 and 200000;
SELECT * FROM emp WHERE empname LIKE '%i%';

select post from emp where empname in ('hetanshi','disha');
select * from emp where post='manager' and age=20;
select * from emp where age =20 or salary=2000;
select * from emp where not salary=2000;
select * from emp where salary<>2000;
select * from emp order by empno desc;

select age from emp group by age;
select COUNT(age) as count from emp group by age;
select salary from emp group by salary having salary>2000;
select salary from emp group by salary having salary>2000 order by salary;

create table pay(
id int,
amount int,
mode varchar(25),
payment_date date
);

insert into pay(id, amount, mode, payment_date) values (1, 60, 'cash', '2024-04-02');
insert into pay(id, amount, mode, payment_date) values (2, 30, 'credit card', '2024-04-05');
insert into pay(id, amount, mode, payment_date) values (3, 90, 'credit card', '2024-04-10');
insert into pay(id, amount, mode, payment_date) values (4, 40, 'debit card', '2024-04-20');
insert into pay(id, amount, mode, payment_date) values (5, 70, 'mobile payment', '2024-04-29');
insert into pay(id, amount, mode, payment_date) values (6, 20, 'cash', '2024-05-05');

select mode,sum(amount)as total from pay group by mode having sum(amount)>=80;