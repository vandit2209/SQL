-- Exercise: outer join using multiple tables

select 
	o.order_date,
    o.order_id,
    c.first_name as customer,
    sh.name as shipper,
    os.name as status
from orders as o
left join shippers as sh
	on o.shipper_id = sh.shipper_id
join customers as c
	on o.customer_id = c.customer_id
join order_statuses as os
	on o.status = os.order_status_id

