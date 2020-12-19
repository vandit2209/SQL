-- Inner Join Clause tutorial

select *
from orders
join customers 
	on orders.customer_id = customers.customer_id;

-- The keyword inner is optional. but we may still use it for clarity


select *
from orders
inner join customers 
	on orders.customer_id = customers.customer_id;


-- simplify output


select order_id, first_name, last_name
from orders
join customers 
	on orders.customer_id = customers.customer_id;


-- ERROR: Because MySql is not sure from which table i.e either orders or customers to pick customer_id from.

select order_id, customer_id, first_name, last_name
from orders
join customers 
	on orders.customer_id = customers.customer_id;

-- corrected

select order_id, orders.customer_id, first_name, last_name
from orders
join customers 
	on orders.customer_id = customers.customer_id;


-- use of aliasing

select order_id, o.customer_id, first_name, last_name
from orders as o
join customers as c 
	on o.customer_id = c.customer_id;