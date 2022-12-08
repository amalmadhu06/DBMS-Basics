--creating a table using .sql file
--if table is already present, deleting it
DROP TABLE IF EXISTS my_courses;

--creating a new table named my_courses
CREATE TABLE my_courses (
    --creating fields
    course_id text NOT NULL,
    created_at timestamp(0) with time zone NOT NULL DEFAULT NOW()
);

--inserting values to the database
INSERT INTO
    my_courses (course_id)
VALUES
    ('CMPS3162');