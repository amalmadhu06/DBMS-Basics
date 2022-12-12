-- BETWEEN returns a range 
SELECT
    *
FROM
    person
WHERE
    date_of_birth BETWEEN DATE '2000-01-01'
    AND '2001-12-31'
ORDER BY
    date_of_birth;