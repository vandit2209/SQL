-- Exercise: OUTER JOIN clause


select 
	p.product_id,
    p.name,
    o.quantity
from products as p
left join order_items as o
	on p.product_id = o.product_id
order by product_id;