--ORDER BY is used to sort the columns in ASC or DESC order.
-- By default, ORDER BY will return result in ASC order
SELECT
    *
FROM
    person
ORDER BY
    country_of_birth;

--
--
--
--sorting results in DESC order
SELECT
    *
FROM
    person
ORDER BY
    country_of_birth DESC;