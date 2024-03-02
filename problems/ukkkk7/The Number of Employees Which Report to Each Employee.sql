select
e1.employee_id,
e1.name,
count(e2.reports_to) as reports_count,
round(avg(e2.age)) as average_age
from Employees e1
inner join Employees e2
on e1.employee_id = e2.reports_to
group by e1.employee_id
order by e1.employee_id;


출처: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
