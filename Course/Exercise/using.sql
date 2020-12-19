-- Exercise: USING clause

use sql_invoicing;

select 
	p.date,
    c.name,
    p.amount,
    pm.name as 'payment method'
from payments as p
join clients as c
	USING(client_id)
join payment_methods as pm
	on p.payment_id = pm.payment_method_id;