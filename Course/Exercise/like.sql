-- Exercise: LIKE Operator

-- get the customers
-- whose addresses contain either Trail Or Avenue


select *
from customers
where 
	address like '%trail%' or 
	address like '%avenue%';


-- phone numbers end with 9

select *
from customers
where phone like '%9';

-- we can always use the not operator along with it
select *
from customers
where 
	address not like '%trail%' or 
	address not like '%avenue%';