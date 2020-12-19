-- OUTER JOIN Tutorial

select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers as c
join orders as o
	on c.customer_id = o.customer_id
order by c.customer_id;

/*
	In the above query we do not get the customers who does not have any orders yet.

 	To get the left out customers also we perform outer join.
    
    There are two types of outer joins:
    
		LEFT OUTER JOIN: Entries of the table on the left will appear even if they do not satisy the joining condition or they are null
        
        RIGHT OUTER JOIN: same as left outer join but now for the right table
*/

select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers as c
left join orders as o
	on c.customer_id = o.customer_id
order by c.customer_id;  # Here we will get all the customers as the left table is of customers.


select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers as c
left outer join orders as o  # same as above query but the outer keyword is used which is optional.. so avoid to use it in order to make code shorter and cleaner
	on c.customer_id = o.customer_id
order by c.customer_id;  # Here we will get all the customers as the left table is of customers.

-- Displaying all orders will require right outer join

select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers as c
right join orders as o
	on c.customer_id = o.customer_id
order by c.customer_id;  # Here we will get all the customers as the right table is of orders.


select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers as c
right outer join orders as o  # same as above query but the outer keyword is used which is optional.. so avoid to use it in order to make code shorter and cleaner
	on c.customer_id = o.customer_id
order by c.customer_id;  # Here we will get all the customers as the right table is of orders.
