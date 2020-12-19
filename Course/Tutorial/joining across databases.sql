-- Joining Accross Databases Tutorial

-- Note: We have the sql_store database in bold. So we can use order_items without a prefix.


select *
from order_items as o
join sql_inventory.products as p
	on o.product_id = p.product_id;
    

-- Change Of Database as well as the query.

use sql_inventory;


select *
from sql_store.order_items as o
join products as p
	on o.product_id = p.product_id;