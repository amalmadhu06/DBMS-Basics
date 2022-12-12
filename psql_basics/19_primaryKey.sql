--primary keyis a column or set of columns that unique identifies each row in a table
CREATE TABLE sample1(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO
    sample1(name)
VALUES
    ('Amal'),
    ('Yadhu'),
    ('Shameem');