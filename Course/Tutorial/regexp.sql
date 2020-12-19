-- RegEX Operator Tutorial

select *
from customers
where last_name like '%field%';

-- Above query using regexp
select *
from customers
where last_name regexp 'field';

/*
	^ - beginning of a string
    $ - end of a string
    | - logical OR
    [] - to match any single characters inside the brackets
    [-] - to match a single character from a range of characters inside the brackets
*/

select *
from customers
where last_name regexp '^field';

select *
from customers
where last_name regexp 'field$';

-- The customer can have field or mac or rose in their last name
-- NOTE: Do Not Use spaces to decorate the regexp as spaces also count as patterns here. I made the same mistake 😛
select *
from customers
where last_name regexp 'field|mac|rose';

-- start with field or have mac or rose in their names

select *
from customers
where last_name regexp '^field|mac|rose';

-- Using $

select *
from customers
where last_name regexp 'field$|mac|rose';

-- use of brackets [] at beginning

select *
from customers
where last_name regexp '[gim]e';

/*
	The above statements returns the customers who have either
		ge 
        ie
        me
	in their last_names i.e g, i or m just before 'e';
*/

-- use of brackets [] at end

select *
from customers
where last_name regexp 'e[fmq]';

-- use of brackets [] and range

select *
from customers
where last_name regexp '[a-h]e';
