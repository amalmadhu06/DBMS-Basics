-- LIMIT is used to to limit the number of rows in the output
-- OFFSET is used to exclude n number of rows from out result 
--FETCH has same functionality as LIMIT
--
--
SELECT
    *
FROM
    person
LIMIT
    3;

--output : first three rows of the table
--
--
SELECT
    *
FROM
    person OFFSET 10
LIMIT
    5;

--output : excluding the first 10 rows, will return rows 11 to 15.
--
---
SELECT
    *
FROM
    person OFFSET 5
FETCH FIRST
    5 ROWS ONLY;
    --output excluding the fist 5 rows, will return rows 5-10