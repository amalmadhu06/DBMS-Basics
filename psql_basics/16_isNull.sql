--
-- IS NULL operatr helps to find rows where specified value is null
--
SELECT
    *
FROM
    person
WHERE
    email IS NULL;

--IS NOT NULL 
SELECT
    *
FROM
    person
WHERE
    email IS NOT NULL;