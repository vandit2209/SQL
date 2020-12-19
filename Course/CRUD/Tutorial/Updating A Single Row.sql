-- Updating A Single Row Tutorial

update invoices
set payment_total = 10, payment_date = '2019-03-01'
where invoice_id = 1;

-- resetting the above input

update invoices
set payment_total = default, payment_date = null
where invoice_id = 1;


-- use of expressions


update invoices
set 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where
	invoice_id = 3;



