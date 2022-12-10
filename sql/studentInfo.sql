--This is an example of one-to-many relationship in a database 
--This one table (student) can have many rows in many tables (address)
-- A student can have many addresses.
--
--
--dropping the table and its child tables if already present
DROP TABLE IF EXISTS student CASCADE;

--creating a table to hold details of students : id, first name and last name;
CREATE TABLE student(
    id serial PRIMARY KEY,
    first_name text,
    last_name text
);

DROP TABLE IF EXISTS address;

--creating the child table to hold address of students
CREATE TABLE address(
    id serial PRIMARY KEY,
    name text,
    student_id integer REFERENCES student(id) ON DELETE CASCADE --student_id in this table is same as the id in the student table. It is the foreign key.
    --ON DELETE CASCADE helps to delete values from child table when referencing row gets deleted from parent table
);

INSERT INTO
    student(first_name, last_name)
VALUES
    ('Amal', 'Madhu'),
    ('Jim', 'Smarts');

INSERT INTO
    address(name, student_id)
VALUES
    ('#3 Apple Street', 1),
    ('#8 Bird Avenue', 1),
    ('#44 Jump Street', 2);

--Get student information
SELECT
    S.first_name,
    S.last_name,
    A.name
FROM
    student as S
    INNER JOIN address AS A ON S.id = A.student_id;