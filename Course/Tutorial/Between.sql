-- BETWEEN Operator Tutorial
select *
from customers
where points >= 1000 and points <= 3000;

select *
from customers
where points between 1000 and 3000;

-- The range values i.e 1000 and 3000 are inclusive.