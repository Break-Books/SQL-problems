-- fast one
SELECT
    CASE
        WHEN id = (
            SELECT
                MAX(id)
            FROM
                Seat
        )
        AND id MOD 2 != 0 THEN id
        WHEN id MOD 2 = 0 THEN id - 1
        WHEN id MOD 2 != 0 THEN id + 1
    END AS id,
    student
FROM
    Seat
ORDER BY
    id
;

-- gpt
SELECT
    CASE
    -- When the number of students is odd, keep the last student's seat the same
        WHEN MOD(id, 2) = 1
        AND id = (
            SELECT
                MAX(id)
            FROM
                seat
        ) THEN id
        -- For odd IDs (except the last one if odd number of seats), add 1
        WHEN MOD(id, 2) = 1 THEN id + 1
        -- For even IDs, subtract 1
        ELSE id - 1
    END AS id,
    student
FROM
    seat
ORDER BY
    id ASC
;
