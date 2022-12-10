--A demonstration table
DROP TABLE IF EXISTS lecturer CASCADE;

CREATE TABLE lecturer (
    id serial PRIMARY KEY,
    first_name text NOT NULL,
    last_name text NOT NULL,
    gender text NOT NULL
);

--A demonstration table
DROP TABLE IF EXISTS course;

CREATE TABLE course(
    id serial PRIMARY KEY,
    name text NOT NULL,
    lecturer_id integer REFERENCES lecturer(id) ON DELETE CASCADE
);

INSERT INTO
    lecturer (first_name, last_name, gender)
VALUES
    ('Jane', 'Smith', 'female'),
    ('Jill', 'Sosa', 'female'),
    ('Josh', 'Sullivan', 'male'),
    ('Joseph', 'Suggs', 'male');

INSERT INTO
    course (name, lecturer_id)
VALUES
    ('Introduction to Databases', 1),
    ('Principles of Programming 1', 1),
    ('Principles of Programming 2', 1),
    ('Web Development', 2),
    ('Principles of Programming 1', 2),
    ('Principles of Programming 2', 2),
    ('Introduction to Databases', 3),
    ('Principles of Programming 1', 3),
    ('Algorithms', 4),
    ('Fundamentals of Computing', 1),
    ('Fundamentals of Computing', 2),
    ('Fundamentals of Computing', 3),
    ('Fundamentals of Computing', 4);

-- finding lecturers and their courses
SELECT
    L.first_name,
    L.last_name,
    C.name
FROM
    lecturer AS L
    INNER JOIN course AS C ON L.id = C.lecturer_id
ORDER BY
    C.name;

--query to find a specific course
SELECT
    L.first_name,
    L.last_name,
    C.name
FROM
    lecturer AS L
    INNER JOIN course as C ON L.id = C.lecturer_id
WHERE
    C.name = 'Introduction to Databases';

-- output   
--  first_name | last_name |           name
-- ------------+-----------+---------------------------
--  Jane       | Smith     | Introduction to Databases
--  Josh       | Sullivan  | Introduction to Databases