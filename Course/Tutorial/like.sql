-- LIKE  Operator Tutorial

select *
from customers
where last_name like 'b%';

select *
from customers
where last_name like 'brush%';

select *
from customers
where last_name like '%b%';

select *
from customers
where last_name like '_y';

select *
from customers
where last_name like '_____y';

select *
from customers
where last_name like 'b____y';

-- % any no of characters
-- _ single characters