--NULLIF function will return the first non null value in a list of values
SELECT
    x / NULLIF(y, 0) AS RESULT
FROM
    table_name;