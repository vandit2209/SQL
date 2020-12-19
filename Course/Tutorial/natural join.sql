-- Natural Join Tutorial

use sql_store;

-- The MySql Engine will automatically look for the columns with the same name and join the tables


select 
	o.order_id,
    c.first_name
from orders o
natural join customers c;