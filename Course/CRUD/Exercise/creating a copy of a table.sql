-- Exercise: Creating a copy of a table

use sql_invoicing;

create table invoices_archived as

select 
	iv.invoice_id,
    iv.number,
    c.name as client,
    iv.invoice_total,
    iv.payment_total,
    iv.due_date,
    iv.payment_date
from invoices iv
join clients c
USING(client_id)
where iv.payment_date is not null