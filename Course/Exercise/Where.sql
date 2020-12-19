-- Where Clause Tutorial
select *
from customers
where points > 3000;

select *
from customers
where state = 'VA';

select *
from customers
where state = 'va';

select *
from customers
where state != 'VA';

select *
from customers
where state <> 'VA';

select *
from customers
where birth_date > '1990-01-01';