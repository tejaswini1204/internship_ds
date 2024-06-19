create table emp1(
emp1id int primary key,
name varchar(50),
country varchar(50) not null
);
create table emp2(
emp2id int primary key,
name varchar(50),
country varchar(50) not null
);
insert into emp1(emp1id,name,country)values(1,'SHUBHAM','INDIA');
insert into emp1(emp1id,name,country)values(2,'AMAN','AUSTRALIA');
insert into emp1(emp1id,name,country)values(3,'NAVEEN','SRILANKA');
insert into emp1(emp1id,name,country)values(4,'ADITYA','AUSTRIA');
insert into emp1(emp1id,name,country)values(5,'NISHANT','SPAIN');

insert into emp2(emp2id,name,country)values(1,'TANMAY','ENGLAND');
insert into emp2(emp2id,name,country)values(2,'ALLAN','FRANCE');
insert into emp2(emp2id,name,country)values(3,'NANCY','INDIA');
insert into emp2(emp2id,name,country)values(4,'ADI','IRELAND');
insert into emp2(emp2id,name,country)values(5,'SANDY','SPAIN');

SELECT country FROM emp1 UNION SELECT country FROM emp2 ORDER BY country;
SELECT country FROM emp1 INTERSECT SELECT country FROM emp2 ORDER BY country;
SELECT country FROM emp1 EXCEPT SELECT country FROM emp2 ORDER BY country;
#column - join 
#row - set+foreign