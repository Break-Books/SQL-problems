-- https://leetcode.com/problems/fix-names-in-a-table/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT
    user_id,
    CONCAT(
        UPPER(SUBSTRING(name, 1, 1)),
        LOWER(
            SUBSTRING(
                name
                FROM
                    2
            )
        )
    ) AS name
FROM
    users
ORDER BY
    user_id
;