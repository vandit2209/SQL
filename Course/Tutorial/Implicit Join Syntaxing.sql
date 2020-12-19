-- Implicit Join Syntaxing

select *
from orders as o
join customers as c
	on o.customer_id = c.customer_id;
    
-- Implicit Join Syntax

select *
from orders as o, customers as c
where o.customer_id = c.customer_id;  # This is the inner join


-- Implicit Cross Join

select *
from orders as o, customers as c;  # This performs the CROSS JOIN because we FORGOT to use the WHERE clause.