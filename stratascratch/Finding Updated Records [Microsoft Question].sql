select
    id, first_name, last_name, department_id,
    max(salary) as max
from ms_employee_salary
group by id, first_name, last_name, department_id
order by id
;