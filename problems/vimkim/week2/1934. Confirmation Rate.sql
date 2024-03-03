-- https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50
-- # Write your MySQL query statement below
SELECT
    s.user_id,
    ROUND(
        IFNULL(
            SUM(
                CASE
                    WHEN c.action = 'confirmed' THEN 1
                    ELSE 0
                END
            ) / COUNT(c.action),
            0
        ),
        2
    ) AS confirmation_rate
FROM
    Signups s
    LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY
    s.user_id
;

-- # most leetcode users
# Write your MySQL query statement below
SELECT
    s.user_id,
    ROUND(AVG(IF(c.action = "confirmed", 1, 0)), 2) AS confirmation_rate
FROM
    Signups s
    LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY
    s.user_id
;

-- # best
SELECT
    s.user_id,
    ROUND(IFNULL(AVG(c.action = 'confirmed'), 0), 2) AS confirmation_rate
FROM
    signups s
    LEFT JOIN confirmations c ON s.user_id = c.user_id
GROUP BY
    user_id
;