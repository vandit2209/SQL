-- Self Join Tutorial

use sql_hr;

select *
from employees as e
join employees as m
	on e.reports_to = m.employee_id;


select 
	e.employee_id,
    e.first_name,
    m.first_name as manager
from employees as e
join employees as m
	on e.reports_to = m.employee_id;