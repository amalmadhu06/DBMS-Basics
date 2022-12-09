--Inner Join
--an inner join returns the rows if the row matches in all tables (returns common values)
SELECT
    S.student_id,
    S.first_name,
    S.last_name,
    G.grade
FROM
    students as S
    INNER JOIN grades as G ON S.student_id = G.student_id;

--Left Outer Join
--A left outer join determines what is in the first table but not in the second table
SELECT
    S.student_id,
    S.first_name,
    S.last_name,
    G.grade
FROM
    students as S
    LEFT OUTER JOIN grades as G ON S.student_id = G.student_id
WHERE
    G.student_id IS NULL;

--Right outer join
--A Right outer join determines what is in the second tabel but not in the first table
SELECT
    S.student_id,
    S.first_name,
    S.last_name,
    G.student_id,
    G.grade
FROM
    students AS S
    RIGHT OUTER JOIN grades AS G ON S.student_id = G.student_id;

--full outer join determines what is in the second table and not in the first table and vice versa
SELECT
    S.student_id,
    S.first_name,
    S.last_name,
    G.student_id,
    G.grade
FROM
    students as S 
    FULL OUTER JOIN grades AS G
    ON S.student_id = G.student_id
    WHERE S.student_id IS NULL OR G.student_id IS NULL; 