-- IN Operator Tutorial

select *
from customers
where state in ('VA', 'GA', 'FL');

select *
from customers
where state not in ('VA', 'GA', 'FL');