create table customers(
customerid int primary key,
customername varchar(50) not null
);
create table orders(
orderid int primary key,
ordernumber int not null,
customerid int,
foreign key (customerid) references
customers(customerid)
);
insert into customers(customerid,customername)values(1,'JOHN');
insert into customers(customerid,customername)values(2,'JANE');
insert into customers(customerid,customername)values(3,'BOB');
insert into customers(customerid,customername)values(4,'HETANSHI');

insert into orders(orderid,ordernumber,customerid)values(1,1001,1);
insert into orders(orderid,ordernumber,customerid)values(2,1002,2);
insert into orders(orderid,ordernumber,customerid)values(3,1003,3);
insert into orders(orderid,ordernumber,customerid)values(4,1004,4);
#one cannot delete from master table and one cannot insert in the child table

DELETE FROM orders WHERE customerid = 4;
DELETE FROM customers WHERE customerid = 4;

select * from orders;
select * from customers;