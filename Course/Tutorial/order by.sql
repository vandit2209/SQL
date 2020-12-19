-- ORDER BY tutorial


-- The queries are sorted by primary key by default


select *
from customers;

-- use order by


select *
from customers
order by first_name;


-- by default the orders are sorted in ascending manner


select *
from customers
order by first_name DESC;


select state, first_name
from customers
order by state, first_name;


select state, first_name
from customers
order by state DESC, first_name DESC;


select first_name, last_name # doesn't need to be in order by 
from customers
order by birth_date DESC;


select first_name, last_name, 10 as points 
from customers
order by points, first_name;

-- sort the data by columns positions ( shouldn't be used as column positions are not static they may change in future. Where as names of columns can be considered to be static )

select first_name, last_name, 10 as points 
from customers
order by 1,3; # sort the data by first_name and points

