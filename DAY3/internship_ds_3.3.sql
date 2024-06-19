#Creates a table named earth with columns new_id (integer) and new_cat (variable character).
create table earth(
new_id int,
new_cat varchar(20)
);

#Inserts rows into the earth table with various values for new_id and new_cat.
insert into earth(new_id,new_cat)values(100,'AGNI');
insert into earth(new_id,new_cat)values(200,'AGNI');
insert into earth(new_id,new_cat)values(500,'DHARTI');
insert into earth(new_id,new_cat)values(700,'DHARTI');
insert into earth(new_id,new_cat)values(200,'VAYU');
insert into earth(new_id,new_cat)values(300,'VAYU');
insert into earth(new_id,new_cat)values(500,'VAYU');

#Calculates total, average, count, minimum, and maximum of new_id for each category, ordered by new_id.
SELECT new_id,new_cat,
SUM(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "TOTAL",
AVG(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "AVERAGE",
COUNT(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "COUNT",
MIN(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "MIN",
MAX(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "MAX"
FROM earth;

#Computes total, average, count, minimum, and maximum of new_id for the entire table, ordered by new_id.
SELECT new_id,new_cat,
SUM(new_id) OVER(ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)AS "TOTAL",
AVG(new_id) OVER(ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)AS "AVERAGE",
COUNT(new_id) OVER(ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)AS "COUNT",
MIN(new_id) OVER(ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)AS "MIN",
MAX(new_id) OVER(ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)AS "MAX"
FROM earth;

#ROW_NUMBER: Generates a sequential number for each row within the ordered partition.
#RANK: Assigns a rank to each row within the ordered partition, with gaps for ties.
#DENSE_RANK: Assigns a rank to each row within the ordered partition without gaps for ties.
#PERCENT_RANK: Calculates the relative rank of each row as a percentage of the total rows.
SELECT new_id,
ROW_NUMBER() OVER(ORDER BY new_id)AS "ROW_NUMBER",
RANK() OVER(ORDER BY new_id)AS "RANK",
DENSE_RANK() OVER(ORDER BY new_id)AS "DENSE_RANK",
PERCENT_RANK() OVER(ORDER BY new_id)AS "PERCENT_RANK"
FROM earth;

#FIRST_VALUE: Fetches the first value in the ordered partition.
#LAST_VALUE: Fetches the last value in the ordered partition.
#LEAD: Fetches the value from a row following the current row by a specified offset.
#LAG: Fetches the value from a row preceding the current row by a specified offset.
SELECT new_id,
FIRST_VALUE(new_id) OVER(ORDER BY new_id)AS "FIRST_VALUE",
LAST_VALUE(new_id) OVER(ORDER BY new_id)AS "LAST_VALUE",
LEAD(new_id) OVER(ORDER BY new_id)AS "LEAD",
LAG(new_id) OVER(ORDER BY new_id)AS "LAG"
FROM earth;

#LEAD with offset: Fetches the value from a row further ahead (2 rows in this case).
#LAG with offset: Fetches the value from a row further behind (2 rows in this case).
SELECT new_id,
LEAD(new_id,2) OVER(ORDER BY new_id)AS "LEAD BY 2",
LAG(new_id,2) OVER(ORDER BY new_id)AS "LAG BY 2"
FROM earth;