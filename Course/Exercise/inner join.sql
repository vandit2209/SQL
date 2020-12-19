-- Exercise: INNER JOIN Clause

-- join order_items and the products table

select order_id, p.product_id, p.name, quantity, o.unit_price
from order_items as o
join products as p
	on o.product_id = p.product_id;
