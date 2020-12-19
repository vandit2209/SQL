-- Exercise: AND, OR and NOT operators

-- from the order_items table, get the items
-- for order # 6
-- where total price is greater than 30

select *
from order_items
where order_id = 6 and quantity * unit_price > 30;