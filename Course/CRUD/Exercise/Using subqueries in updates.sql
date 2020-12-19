-- Exercise: Using subqueries in updates
use sql_store;
update orders
set
	comments = 'Gold Customer'
where
	customer_id in (
						select 
							customer_id
						from customers
						where points > 3000
					);