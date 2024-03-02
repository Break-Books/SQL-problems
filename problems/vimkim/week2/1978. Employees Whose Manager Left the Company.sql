-- https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50
-- # Write your MySQL query statement below
-- mine
-- leetcode beats 6.8%
SELECT
    e1.employee_id
FROM
    employees e1
    LEFT JOIN employees e2 ON e1.manager_id = e2.employee_id
WHERE
    e1.salary < 30000
    AND (
        e2.employee_id IS NULL
        AND e1.manager_id IS NOT NULL
    )
ORDER BY
    employee_iad
;

-- # Write your MySQL query statement below
SELECT
    employee_id
FROM
    employees
WHERE
    salary < 30000
    AND manager_id NOT IN(
        SELECT
            employee_id
        FROM
            employees
    )
ORDER BY
    employee_id
;

-- best
-- best
WITH
    emp_with_managers AS (
        SELECT
            *
        FROM
            Employees
        WHERE
            manager_id IS NOT NULL
    ),
    sol1 AS (
        SELECT
            em.*,
            e.employee_id AS managerId
        FROM
            emp_with_managers em
            LEFT JOIN Employees e ON em.manager_id = e.employee_id
    )
SELECT
    employee_id
FROM
    sol1
WHERE
    salary < 30000
    AND managerId IS NULL
ORDER BY
    employee_id
;