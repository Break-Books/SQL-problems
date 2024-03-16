-- leetcode solution 1
SELECT DISTINCT
    product_id,
    10 AS price
FROM
    Products
WHERE
    product_id NOT IN(
        SELECT DISTINCT
            product_id
        FROM
            Products
        WHERE
            change_date <= '2019-08-16'
    )
UNION
SELECT
    product_id,
    new_price AS price
FROM
    Products
WHERE
    (product_id, change_date) IN (
        SELECT
            product_id,
            MAX(change_date) AS DATE
        FROM
            Products
        WHERE
            change_date <= '2019-08-16'
        GROUP BY
            product_id
    )
;

-- leetcode 2
SELECT DISTINCT
    product_id,
    COALESCE(
        (
            SELECT
                new_price
            FROM
                (
                    SELECT
                        *
                    FROM
                        products p3
                    WHERE
                        change_date <= '2019-08-16'
                        AND p3.product_id = p2.product_id
                ) p1
            ORDER BY
                change_date DESC
            LIMIT
                1
        ),
        10
    ) AS price
FROM
    products p2
;

-- leetcode 2 - 1
(
    SELECT
        *
    FROM
        products p3
    WHERE
        change_date <= '2019-08-16'
        AND p3.product_id = p2.product_id
)
;
