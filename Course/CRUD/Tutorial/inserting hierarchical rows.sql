-- Insert into hierarchical rows

insert into orders 
(
customer_id,
 order_date,
 status
 )
 values
 (
	1,
    '2019-01-02',
    1
 );
 
 insert into order_items
 values
		(last_insert_id(), 1, 1, 2.95),
        (last_insert_id(), 2, 1, 3.95);