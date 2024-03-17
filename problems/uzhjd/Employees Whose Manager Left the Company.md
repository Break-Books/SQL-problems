```mysql
select employee_id
from Employees
where manager_id not in (select employee_id
                         from Employees)
      and salary < 30000
order by employee_id;
```

[문제] https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50
