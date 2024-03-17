```mysql
(select employee_id, department_id
from employee
where primary_flag = 'Y')

union

(select employee_id, department_id
from employee
group by employee_id
having count(*) = 1
order by 1);
```

[ 문제 ] https://leetcode.com/problems/primary-department-for-each-employee/?envType=study-plan-v2&envId=top-sql-50
