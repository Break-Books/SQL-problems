-- https://leetcode.com/problems/second-highest-salary/?envType=study-plan-v2&envId=top-sql-50
SELECT
    (
        SELECT DISTINCT
            Salary
        FROM
            Employee
        ORDER BY
            Salary DESC
        LIMIT
            1
        OFFSET
            1
    ) AS SecondHighestSalary
;
