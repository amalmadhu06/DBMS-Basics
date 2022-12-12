-- GROUP BY is used to group together rows that have same values in a specified column. It is 
--usually used with aggregate functions like count , sum, etc
SELECT
    country_of_birth,
    COUNT(*)
FROM
    person
GROUP BY
    country_of_birth;

-------------------------
SELECT
    country_of_birth,
    COUNT(*)
FROM
    person
GROUP BY
    country_of_birth
ORDER BY
    country_of_birth;

--------------------
SELECT
    country_of_birth,
    COUNT(*)
FROM
    person
GROUP BY
    country_of_birth
ORDER BY
    country_of_birth;