```mysql
select m.employee_id,
       m.name,
       count(distinct e.employee_id) as reports_count,
       round(avg(e.age), 0) as average_age
from Employees m join Employees e on m.employee_id = e.reports_to
where e.employee_id is not null
group by m.employee_id;
```

[문제] https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
