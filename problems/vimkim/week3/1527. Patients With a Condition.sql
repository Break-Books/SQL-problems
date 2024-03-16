-- # Write your MySQL query statement below
SELECT
    patient_id,
    patient_name,
    conditions
FROM
    Patients
WHERE
    conditions LIKE 'DIAB1%'
    OR conditions LIKE '% DIAB1%'
;

-- leetcode fastest
-- # Write your MySQL query statement below
SELECT
    *
FROM
    Patients
WHERE
    conditions LIKE('DIAB1%')
    OR conditions LIKE('% DIAB1%')
;

-- another
SELECT
    *
FROM
    Patients
WHERE
    Patients.conditions REGEXP '\\bDIAB1'
;