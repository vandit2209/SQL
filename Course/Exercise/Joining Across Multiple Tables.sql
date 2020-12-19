-- Exercise: Joining Across Multiple Tables

use sql_invoicing;

select 
	p.date,
    p.invoice_id,
    p.amount,
    c.name,
	pm.name
from payments as p
join clients as c
	on p.client_id = c.client_id
join payment_methods as pm
	on p.payment_method = pm.payment_method_id;
