-- HAVING key word can be used along with GROUP BY to filter the groups that are 
--returned by the GROUP BY clause based on a condition..
SELECT
    country_of_birth,
    COUNT(*)
FROM
    person
GROUP BY
    country_of_birth
HAVING
    COUNT(*) > 5
ORDER BY
    country_of_birth;