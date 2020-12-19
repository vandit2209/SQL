-- Using Subqueries in Updates tutorial


use sql_invoicing;

-- using query with single output

update invoices
set 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where
	client_id = (
					select client_id
                    from clients
					where name='Myworks'
				);


-- using query with multiple outputs

update invoices
set 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where
	client_id in (
					select client_id
                    from clients
					where state in ('CA', 'NY')
				);

