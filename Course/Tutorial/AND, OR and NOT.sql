-- And,OR and NOT Operators Tutorial

select *
from customers
where birth_date > '1990-01-01' and points > 1000;

select *
from customers
where birth_date > '1990-01-01' or points > 1000;

select *
from customers
where 
	birth_date > '1990-01-01' or 
    (points > 1000 and state = 'va');

-- AND Operator has a higher precedence than OR operator

select *
from customers
where not (birth_date > '1990-01-01' or points > 1000);