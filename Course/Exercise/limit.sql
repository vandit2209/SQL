-- Exercise: LIMIT Clause

-- Get the top 3 loyal customers

select *
from customers
order by points DESC
limit 3;


/*
	We should remember the order of the clauses:
		SELECT ...
        FROM ...
        WHERE ...
        ORDER BY ...
        LIMIT ...
        
	NOTE BY MOSH HEMADANI: If you change the order of these statements then MySql is going to YELL! at you 😆
*/