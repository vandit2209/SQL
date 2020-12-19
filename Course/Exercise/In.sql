-- Exercise: IN Operator

-- return products with
-- 		quantity in stock equals 49, 38, 20 

select *
from products
where quantity_in_stock in (49, 38, 20);