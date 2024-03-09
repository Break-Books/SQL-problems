select
  max(salary) as secondHighestSalary
from employee
where salary < (select max(salary) from employee);

출처: https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50
