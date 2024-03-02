-- ok
SELECT
    mentee.employee_id AS mentee_id,
    mentee.name AS mentee_name,
    mentor.employee_id AS mentor_id,
    mentor.name AS mentor_name
FROM
    (
        SELECT
            *
        FROM
            employees
        WHERE
            join_date BETWEEN '2021-10-01' AND '2021-12-31'
    ) AS mentee
    LEFT JOIN (
        SELECT
            *
        FROM
            employees
        WHERE
            join_date <= '2019-12-31'
    ) AS mentor ON mentee.department != mentor.department
ORDER BY
    mentee_id ASC,
    mentor_id ASC
;
