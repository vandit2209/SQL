-- Cross Join Tutorial

-- Explicit Syntax


select 
	c.first_name as customer,
    p.name as product
from customers c
cross join products p
order by c.first_name;


-- Implicit Syntax

select 
	c.first_name as customer,
    p.name as product
from customers c, products p
order by c.first_name