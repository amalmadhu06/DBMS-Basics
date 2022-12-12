-- WHERE can be used to filter down data
-- AND & OR cane be used along with WHERE to create powerful filters
SELECT
    *
FROM
    person
WHERE
    country_of_birth = 'China';

---
--
--
SELECT
    *
FROM
    person
WHERE
    country_of_birth = 'China'
    AND gender = 'Female';

--
--
--
SELECT
    *
FROM
    person
WHERE
    gender = 'Female'
    AND (
        country_of_birth = 'China'
        OR country_of_birth = 'Poland'
    );