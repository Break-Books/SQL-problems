-- my solution
WITH
    dates AS (
        SELECT DISTINCT
            a.visited_on AS start_date,
            b.visited_on AS end_date
        FROM
            customer a
            JOIN customer b ON DATEDIFF(b.visited_on, a.visited_on) = 6
    )
SELECT
    end_date AS visited_on,
    SUM(c.amount) AS amount,
    ROUND(SUM(c.amount) / 7, 2) AS average_amount
FROM
    dates d
    JOIN customer c ON c.visited_on BETWEEN d.start_date AND d.end_date
GROUP BY
    d.end_date
ORDER BY
    visited_on
;