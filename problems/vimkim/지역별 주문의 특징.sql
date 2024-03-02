-- x
SELECT
    region AS Region,
    SUM(
        CASE
            WHEN category = 'Furniture' THEN 1
            ELSE 0
        END
    ) AS Furniture,
    SUM(
        CASE
            WHEN category = 'Office Supplies' THEN 1
            ELSE 0
        END
    ) AS `Office Supplies`,
    SUM(
        CASE
            WHEN category = 'Technology' THEN 1
            ELSE 0
        END
    ) AS Technology
FROM
    records
GROUP BY
    region
ORDER BY
    region
;