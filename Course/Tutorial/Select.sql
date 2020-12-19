-- Select Clause Tutorial
select first_name, last_name
from customers;

select last_name, first_name
from customers;

select 
	first_name, 
    points, 
    (points*10) + 100 as 'discount factor'
from customers;

select distinct state
from customers