-- AGE function takes two arguments (time, time) and return the diff bw them 
SELECT
    first_name,
    AGE(NOW(), date_of_birth)
FROM
    person;