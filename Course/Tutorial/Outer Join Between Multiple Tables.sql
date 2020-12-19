-- Outer Join Between Multiple Tables Tutorial
/*
	Avoid the use of right joins to reduce the complexity of the code
*/
select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers as c
left join orders as o                # This is a left outer join on customers x orders
	on c.customer_id = o.customer_id
join shippers as sh                  # This is a inner join on customers x shippers
	on o.shipper_id = sh.shipper_id
order by c.customer_id;  # In the output we only see customers who have a shipper_id. This is due to the effect of inner join on output.


-- fixing the above issue

select 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name as Shipper
from customers as c
left join orders as o                # This is a left outer join on customers x orders
	on c.customer_id = o.customer_id
left join shippers as sh                  # This is a left outer join on customers x shippers
	on o.shipper_id = sh.shipper_id
order by c.customer_id;