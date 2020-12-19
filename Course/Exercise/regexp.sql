-- Exercise: Regexp Operator

/*
	Get the customers whose
		1. first names are ELKA or AMBUR
        2. last names end with EY or ON
        3. last names start with MY or contains SE
        4. last names contains B followed by R or U
*/

-- 1

select *
from customers
where first_name regexp 'elka|ambur';

-- 2

select *
from customers
where last_name regexp 'ey$|on$';

-- 3

select *
from customers
where last_name regexp '^my|se';

-- 4

select *
from customers
where last_name regexp 'b[r|u]';