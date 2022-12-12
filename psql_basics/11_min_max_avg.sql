--MIN
SELECT
    make,
    MIN(price)
FROM
    car
GROUP BY
    make;

--
--
--MAX
SELECT
    make,
    MAX(price)
FROM
    car
GROUP BY
    make;

--
--
--AVG
SELECT
    make,
    AVG(price)
FROM
    car
GROUP BY
    make;