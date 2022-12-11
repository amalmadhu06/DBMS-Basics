-- An example of many to many relationship
DROP TABLE IF EXISTS student_course CASCADE;

DROP TABLE IF EXISTS course CASCADE;

DROP TABLE IF EXISTS student CASCADE;

CREATE TABLE course(
    id serial PRIMARY KEY,
    code text NOT NULL,
    name text NOT NULL,
    credits integer NOT NULL
);

INSERT INTO
    course(code, name, credits)
VALUES
    ('MATH1201', 'Trigonometry', 3),
    ('ENGL1014', 'English I', 3),
    ('CMP171', 'Introduction to Database', 6);

--
--A course can be taken by many students. 
CREATE TABLE student(
    id serial PRIMARY KEY,
    first_name text NOT NULL,
    last_name text NOT NULL,
    gender text NOT NULL
);

INSERT INTO
    student (first_name, last_name, gender)
VALUES
    ('Jane', 'Smith', 'female'),
    ('Jill', 'Sosa', 'female'),
    ('Josh', 'Sullivan', 'male'),
    ('Joseph', 'Suggs', 'male');

--
-- A linking table
CREATE TABLE student_course(
    id serial PRIMARY KEY,
    --primary key
    student_id integer REFERENCES student(id),
    --foreign key 1
    course_id integer REFERENCES course(id) --foreign key 2
);

INSERT INTO
    student_course (student_id, course_id)
VALUES
    (1, 1),
    (1, 3),
    (2, 2),
    (3, 2),
    (3, 3);

--
--
--
--
--show students, courses they take and the credits
SELECT
    S.first_name,
    S.last_name,
    C.code,
    C.name,
    C.credits
FROM
    student AS S
    INNER JOIN student_course AS SC ON S.id = SC.student_id
    INNER JOIN course AS C ON SC.course_id = C.id;