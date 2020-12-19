-- Exercise: IS NULL operator

-- get the orders that are not shipped

select *
from orders
where shipped_date is null;