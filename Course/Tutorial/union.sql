-- Unions Tutorial
/*
	The number of columns combined using UNION should be same in each of the queries.
*/


-- Union On the same table


select 
	order_id,
    order_date,
    'Active' as Status
from orders
where order_date >= '2019-01-01'

union

select 
	order_id,
    order_date,
    'Archived' as Status
from orders
where order_date < '2019-01-01' ;



-- Union against different tables

select
	first_name
from customers

union

select
	name
from shippers;

-- Run to identify the difference

select
	name
from shippers

union

select
	first_name
from customers;


