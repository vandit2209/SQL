-- Joining Multiple Tables Tutorial

use sql_store;

select *
from orders as o
join customers as c
	on o.customer_id = c.customer_id
join order_statuses as os
	on o.status = os.order_status_id;
    
    
-- The above table is hard to extract data from

select 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name as Status
from orders as o
join customers as c
	on o.customer_id = c.customer_id
join order_statuses as os
	on o.status = os.order_status_id;
    
    