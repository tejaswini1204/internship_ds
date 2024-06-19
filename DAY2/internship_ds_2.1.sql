create table employee(
empid int,
name varchar(25),
gender char(20),
department varchar(25),
eduction varchar(25),
month_of_joining varchar(20),
salary int);

insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1001,'AJAY','M','ENGINEERING','DOCTORAL','JANUARY',25);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1002,'BABLOO','M','ENGINEERING','UG','FEBRUARY',23);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1003,'CHHAVI','F','HR','PG','MARCH',15);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1004,'DHEERAJ','M','HR','UG','JANUARY',12);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1005,'EVINA','F','MARKETING','UG','MARCH',16);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1006,'FREDY','M','SALES','UG','DECEMBER',10);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1007,'GARIMA','F','SALES','PG','MARCH',10);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1008,'HANS','M','ADMIN','PG','NOVEMBER',8);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1009,'IVANKA','F','ADMIN','INTERMEDIATE','APRIL',7);
insert into employee(empid,name,gender,department,eduction,month_of_joining,salary)values(1010,'JAI','M','PEON','HIGH SCHOOL','DECEMBER',4);

select * from employee;

#find the department in which SUM salary is greater than or equal to 20lacs, but the ducatoion of employees is not UG.
SELECT department FROM employee GROUP BY department HAVING SUM(salary) >= 20 AND NOT EXISTS (SELECT 1 FROM employee WHERE department = e.department AND education = 'UG');

#find the departments in which the SUM of the salaries is greater than or equal to 15 lacs and arrange the salary in descending order
SELECT department FROM employee GROUP BY department HAVING SUM(salary) >= 15 ORDER BY sum(salary) DESC;

#write the query to select all departments whose average is greater than 35 from the 'salary' column in employee table
SELECT department FROM employee GROUP BY department HAVING AVG(salary)>35;

#write the query to find the employee's name whose salary is between 14 and 24 in the 'teachers' table
SELECT name FROM employee WHERE salary BETWEEN 14 AND 24;

#write an sql query to display the total salary of each employee adding the salary with variable value consider variable value is 5
UPDATE employee
SET salary = salary + 5;
select * from employee;