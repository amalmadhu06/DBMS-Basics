--inserting values into the tables
--inserting a value without mentioning email 
INSERT INTO
    person(
        first_name,
        last_name,
        gender,
        date_of_birth
    )
VALUES
    ('Annie', 'Smith', 'FEMALE', DATE '1988-01-09');

--inserting value with mentioning email id
INSERT INTO
    person(
        first_name,
        last_name,
        gender,
        date_of_birth,
        email
    )
VALUES
    (
        'Peter',
        'John',
        'MALE',
        DATE '1990-04-07',
        'peterjohn@gmail.com'
    );