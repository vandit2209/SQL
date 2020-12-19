-- Exercise: Union clause

select
	customer_id,
    first_name,
    points,
    'Bronze' as Type
from customers
where points < 2000

union

select
	customer_id,
    first_name,
    points,
    'Silver' as Type
from customers
where points between 2000 and 3000

union

select
	customer_id,
    first_name,
    points,
    'Gold' as Type
from customers
where points > 3000
order by first_name;