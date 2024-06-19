#TABLE 1 PRIMARY KEY AND TABLE 2 FOREIGN KEY WILL HAVE SAME NAME
/*
SELECT column1, column2, ...
FROM table1
INNER JOIN table2 ON table1.column = table2.column;
*/
create table customer(
customer_id int primary key,
first_name varchar(20),
last_name varchar(20),
address_id int
);
CREATE TABLE payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    amount INT,
    mode VARCHAR(20),
    date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

insert into customer(customer_id,first_name,last_name,address_id)values(1,'MARY','JONAS',5);
insert into customer(customer_id,first_name,last_name,address_id)values(3,'LINDA','SMITH',7);
insert into customer(customer_id,first_name,last_name,address_id)values(4,'MADAN','MOHAN',8);
insert into customer(customer_id,first_name,last_name,address_id)values(2,'BARY','WILLIAMS',6);

insert into payment(amount,mode,date,customer_id)values(60,'CASH','2024-04-03',1);
insert into payment(amount,mode,date,customer_id)values(30,'CREDIT CARD','2024-04-03',2);
insert into payment(amount,mode,date,customer_id)values(110,'CASH','2024-04-03',8);
insert into payment(amount,mode,date,customer_id)values(70,'MOBILE PAYMENT','2024-04-03',10);
insert into payment(amount,mode,date,customer_id)values(80,'CASH','2024-04-03',11);

SELECT * FROM customer AS c INNER JOIN payment AS p ON c.customer_id=p.customer_id;
SELECT * FROM customer AS c LEFT JOIN payment AS p ON c.customer_id=p.customer_id;
SELECT * FROM customer AS c RIGHT JOIN payment AS p ON c.customer_id=p.customer_id;
SELECT * FROM customer AS c LEFT JOIN payment AS p ON c.customer_id = p.customer_id UNION SELECT * FROM customer AS c RIGHT JOIN payment AS p ON c.customer_id = p.customer_id;