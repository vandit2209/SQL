-- USING Clause Tutorial
/*
	The USING keyword only works if the column name is exactly the same acrosss different tables.
*/

use sql_store;


select
	o.order_id,
    c.first_name
from orders o
join customers
	-- on o.customer_id = c.customer_id   # Note: Here the columns in both the tables have exactly the same name
    USING (customer_id);    # Here we have used USING for the inner join


select 
	o.order_id,
    c.first_name,
    sh.name as shipper
from orders o
join customers c
	-- on o.customer_id = c.customer_id   # Note: Here the columns in both the tables have exactly the same name
    USING (customer_id)
left join shippers as sh                  # We can use USING with the outer joins also.
	USING (shipper_id);
    
    
/*
	The USING keyword for the tables having composite primary key.
*/

select *
from order_items as oi
join order_item_notes as oin
-- 	on oi.order_id = oin.order_id
--     and oi.product_id = oin.product_id;
USING(order_id, product_id);
    