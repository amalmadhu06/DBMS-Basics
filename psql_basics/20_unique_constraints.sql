--unique constraints helps us to ensure that the value in a column or group of coloumn are unique
ALTER TABLE
    person
ADD
    CONSTRAINT unique_email_id UNIQUE(email);