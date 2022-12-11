-- --example of self join
DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
    id serial PRIMARY KEY,
    first_name text NOT NULL,
    last_name text NOT NULL,
    manager_id integer
);

INSERT INTO
    employee(first_name, last_name, manager_id)
VALUES
    ('Jane', 'Smith', NULL),
    ('Jill', 'Sosa', 1),
    ('Josh', 'Sullivan', 1),
    ('Joseph', 'Suggs', 2);

--performing a self-join to find for each employee their boss/manager
SELECT
    E.first_name AS "emp(fname)",
    E.last_name AS "emp(lname)",
    M.first_name AS "boss(fname)",
    M.last_name AS "boss(lname)"
FROM
    employee AS E
    INNER JOIN employee AS M ON E.manager_id = M.id;