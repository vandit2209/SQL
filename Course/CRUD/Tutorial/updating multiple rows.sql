-- Updating Multiple Records

/*
	If you are on a mac and using mysql workbench then in order to update multiple records you must do the following:
    MySQLWorkbench -> Preferences -> Click on SQL Editor -> Scroll Down to the bottom -> uncheck the safe delete option
	
    Restart the workbench to apply the changes
*/

update invoices
set
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where
	client_id = 3