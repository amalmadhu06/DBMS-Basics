--creating two tables and inserting values

DROP TABLE IF EXISTS students;


--creating the table students with three columns
CREATE TABLE students(
    student_id integer PRIMARY KEY,
    first_name text,
    last_name text
);


--inserting values into the students table
INSERT INTO students(student_id, first_name, last_name)
VALUES
(20221, 'Amal', 'Madhu'),
(20222, 'Akshay', 'U'),
(20224, 'Yadhu', 'Krishna');


--creating another table for grades
DROP TABLE IF EXISTS grades;

CREATE TABLE grades(
    student_id integer PRIMARY KEY,
    grade text
);

INSERT INTO grades(student_id, grade)
VALUES
(20221, 'A'),
(20222, 'B'),
(20223, 'C');
 