-- LIMIT Clause tutorial

select *
from customers
limit 3;

-- If we supply a limit greater than or equal to the number of entries than we get all the entries as a result


select *
from customers
limit 300;


/*
	 Consider our webpage shows 3 records per page and its orientation is shown below:
		page 1: 1 - 3
        page 2: 4 - 6
        page 3: 7 - 9
        
	And we want to get the contents of the page 3
*/

select *
from customers
limit 6, 3;  # here 6 is the offset i.e the number of rows to be skipped and 3 is the limit