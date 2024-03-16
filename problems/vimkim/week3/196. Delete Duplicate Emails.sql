-- # Write your MySQL query statement below
-- best leetcode
DELETE p1
FROM
    Person p1,
    Person p2
WHERE
    p1.email = p2.email
    AND p1.id > p2.id
;

-- # Write your MySQL query statement below
-- fastest
DELETE p1
FROM
    PERSON p1
    LEFT JOIN (
        SELECT
            MIN(ID) AS minID
        FROM
            PERSON
        GROUP BY
            EMAIL
    ) p2 ON p1.ID = p2.minID
WHERE
    p2.minID IS NULL
;