-- IN takes an array of values and returns the matching results
-- It helps to avoid the use of OR
SELECT
    *
FROM
    person
WHERE
    country_of_birth IN ('China', 'Brazil', 'France')
ORDER BY
    country_of_birth;