--check constraint allows us to specify a condition that all values in a colum must satisfy.
ALTER TABLE
    person
ADD
    CONSTRAINT gender_contraint CHECK (
        gender = 'Female'
        OR gender = 'Male'
    );