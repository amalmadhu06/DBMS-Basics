-- COALESCE function will return the first non null value in a list of values
SELECT
    first_name,
    COALESCE (email, 'email not provided') AS email
FROM
    person;