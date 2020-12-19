-- Self Outer Join Tutorial

use sql_hr;

select 
	e.employee_id,
    e.first_name,
    m.first_name as manager
from employees e
left join employees m              # The CEO of the company does not have a manager. So the report_to will be null. And outer join help will show the same.
	on e.reports_to = m.employee_id;