```mysql
-- select IF(count(*) = 0, "null", salary) as SecondHighestSalary
-- from (select row_number() over (order by salary desc) as num, salary
--       from Employee) sub
-- where num = 2;

-- select max(salary) as SecondHighestSalary
-- from Employee
-- where salary < (select max(salary)
--                 from Employee);

SELECT
    (SELECT DISTINCT
            Salary
        FROM
            Employee
        ORDER BY Salary DESC
        LIMIT 1 OFFSET 1) AS SecondHighestSalary

```

[ 문제 ] https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50
