-- creating a copy of tables tutorial

create table orders_archived as 
select * from orders;  # Note the primary key and the auto increment attributes are not being selected in the orders_archived table


-- Go ahead and truncate the orders_archived table to delete all the ENTRIES in the table. Here the table is not being deleted
/*
	This is an example of subquery in an insert into statement using a select statement
*/

insert into orders_archived
select *
from orders
where order_date < '2019-01-01'