-- Compund Join Tutorial

use sql_store;

/* click on the wrench/settings icon when you hover on order_items in the workspace sidebar. You wil see there are two primary keys.
Such keys are called composite primary keys.
There is a separate way to perform join on such tables.
*/

select *
from order_items as oi
join order_item_notes as oin
	on oi.order_id = oin.order_id 
    and oi.product_id = oin.product_id;  # Compound Join Conditions