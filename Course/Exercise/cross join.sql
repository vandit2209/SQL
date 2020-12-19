-- Exercise: Cross Join

/*
	Do a cross join between shippers and products using
		1. Explicit Syntax
        2. Implicit Sytax
*/


-- Explicit Syntax


select 
	sh.name as shipper,
    p.name as product
from shippers sh
cross join products p;


-- Implicit Syntax


select 
	sh.name as shipper,
    p.name as product
from shippers sh, products p;

