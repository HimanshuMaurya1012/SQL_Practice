# Write your MySQL query statement below
select es.unique_id,e.name
from employees e
left join EmployeeUNI es
on e.id = es.id
