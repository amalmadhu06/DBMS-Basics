--arithmetic operators are used to perform mathematical operations on numeric values
--adding 10% to car price
SELECT
    id,
    make,
    price,
    price * 0.10 AS with_tax
FROM
    car;

    