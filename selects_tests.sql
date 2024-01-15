-- Select 1: Retrieve information about students, courses, and teachers they are associated with.
SELECT
    s.name AS student_name,
    s.surname AS student_surname,
    c.name AS course_name,
    t.name AS teacher_name
FROM
    students_courses sc
JOIN
    students s ON sc.students_student_id = s.student_id
JOIN
    courses c ON sc.courses_course_id = c.course_id
JOIN
    teachers_courses tc ON c.course_id = tc.courses_course_id
JOIN
    teachers t ON tc.teachers_teacher_id = t.teacher_id;



-- Select 2: Calculate the average grade for each course.
SELECT
    c.name AS course_name,
    AVG(g.grade) AS average_grade
FROM
    courses c
JOIN
    grades g ON c.course_id = g.courses_course_id
GROUP BY
    c.name;

-- Select 3: Retrieve information about students, courses, and groups they belong to.
SELECT
    gs.groups_group_id,
    s.name AS student_name,
    s.surname AS student_surname,
    c.name AS course_name
FROM
    groups_students gs
JOIN
    students s ON gs.students_student_id = s.student_id
JOIN
    students_courses sc ON s.student_id = sc.students_student_id
JOIN
    courses c ON sc.courses_course_id = c.course_id
WHERE
    gs.groups_group_id = 'GroupG';

-- Select 4: Retrieve information about teachers, courses, and the faculty they belong to.
SELECT
    f.name AS faculty_name,
    t.name AS teacher_name,
    t.surname AS teacher_surname,
    c.name AS course_name
FROM
    faculties f
JOIN
    teachers t ON f.faculty_id = t.faculties_faculty_id
JOIN
    teachers_courses tc ON t.teacher_id = tc.teachers_teacher_id
JOIN
    courses c ON tc.courses_course_id = c.course_id
WHERE
    f.name = 'Wydzia? In?ynierii Materia?owej';

-- Select 5: Count the number of students in each group.
SELECT
    g.group_id,
    COUNT(gs.students_student_id) AS student_count
FROM
    groups g
LEFT JOIN
    groups_students gs ON g.group_id = gs.groups_group_id
GROUP BY
    g.group_id;

-- Select 6: Retrieve information about teachers, courses, and students associated with a specific teacher.
SELECT
    t.name AS teacher_name,
    t.surname AS teacher_surname,
    c.name AS course_name,
    s.name AS student_name,
    s.surname AS student_surname
FROM
    teachers t
JOIN
    teachers_courses tc ON t.teacher_id = tc.teachers_teacher_id
JOIN
    courses c ON tc.courses_course_id = c.course_id
JOIN
    students_courses sc ON c.course_id = sc.courses_course_id
JOIN
    students s ON sc.students_student_id = s.student_id
WHERE
    t.name = 'Martyna' AND t.surname = 'Krawczyk';

-- Select 7: Calculate the average grade for each course along with the associated faculty.
SELECT
    c.name AS course_name,
    AVG(g.grade) AS average_grade,
    f.name AS faculty_name
FROM
    courses c
JOIN
    grades g ON c.course_id = g.courses_course_id
JOIN
    students s ON g.students_student_id = s.student_id
JOIN
    faculties f ON s.faculties_facultie_id = f.faculty_id
GROUP BY
    c.name, f.name;

-- Select 8: Retrieve students who do not have grades.
SELECT
    s.name AS student_name,
    s.surname AS student_surname
FROM
    students s
LEFT JOIN
    grades g ON s.student_id = g.students_student_id
WHERE
    g.grade IS NULL;

-- Select 9: Count the number of students enrolled in each course.
SELECT
    c.name AS course_name,
    COUNT(sc.students_student_id) AS student_count
FROM
    courses c
LEFT JOIN
    students_courses sc ON c.course_id = sc.courses_course_id
GROUP BY
    c.name;

-- Select 10: Retrieve teachers who do not have associated courses.
SELECT
    t.name AS teacher_name,
    t.surname AS teacher_surname
FROM
    teachers t
LEFT JOIN
    teachers_courses tc ON t.teacher_id = tc.teachers_teacher_id
WHERE
    tc.teachers_teacher_id IS NULL;



-- Select 11: Retrieve the names and birth dates of students who belong to a specific faculty.
SELECT
    s.name AS student_name,
    s.birth_date AS student_birth_date
FROM
    students s
JOIN
    faculties f ON s.faculties_facultie_id = f.faculty_id
WHERE
    f.name = 'Wydzia? In?ynierii Materia?owej';



-- Select 12: Retrieve the courses and their associated teachers for a given semester.
SELECT
    c.name AS course_name,
    t.name AS teacher_name,
    t.surname AS teacher_surname
FROM
    courses c
JOIN
    teachers_courses tc ON c.course_id = tc.courses_course_id
JOIN
    teachers t ON tc.teachers_teacher_id = t.teacher_id
JOIN
    students_courses sc ON c.course_id = sc.courses_course_id
JOIN
    students s ON sc.students_student_id = s.student_id
WHERE
    s.semester = 3;

-- Select 13: Retrieve the top-performing student (highest average grade) in each course.
SELECT
    c.name AS course_name,
    s.name AS student_name,
    s.surname AS student_surname,
    AVG(g.grade) AS average_grade
FROM
    courses c
JOIN
    students_courses sc ON c.course_id = sc.courses_course_id
JOIN
    students s ON sc.students_student_id = s.student_id
JOIN
    grades g ON s.student_id = g.students_student_id
WHERE
    (c.course_id, g.grade) IN (
        SELECT
            courses_course_id,
            MAX(grade) AS max_grade
        FROM
            grades
        GROUP BY
            courses_course_id
    )
GROUP BY
    c.name, s.name, s.surname;




-- Select 14: Retrieve the courses that have more than 20 enrolled students.
SELECT
    c.name AS course_name,
    COUNT(sc.students_student_id) AS student_count
FROM
    courses c
LEFT JOIN
    students_courses sc ON c.course_id = sc.courses_course_id
GROUP BY
    c.name
HAVING
    COUNT(sc.students_student_id) > 2;

-- Select 15: Retrieve teachers and their courses who joined after a specific date.
SELECT
    t.name AS teacher_name,
    t.surname AS teacher_surname,
    c.name AS course_name,
    t.date_employed
FROM
    teachers t
JOIN
    teachers_courses tc ON t.teacher_id = tc.teachers_teacher_id
JOIN
    courses c ON tc.courses_course_id = c.course_id
WHERE
    t.date_employed > TO_DATE('1963-01-01', 'YYYY-MM-DD');





-- Select 16: Retrieve the courses that have no enrolled students.
SELECT
    c.name AS course_name
FROM
    courses c
LEFT JOIN
    students_courses sc ON c.course_id = sc.courses_course_id
WHERE
    sc.students_student_id IS NULL;




-- Select 17: Retrieve students who have grades higher than a certain threshold.
SELECT
    s.name AS student_name,
    s.surname AS student_surname,
    g.grade
FROM
    students s
JOIN
    grades g ON s.student_id = g.students_student_id
WHERE
    g.grade > 90;

-- Select 18: Retrieve the courses offered in a specific semester along with the number of enrolled students.
SELECT
    c.name AS course_name,
    COUNT(sc.students_student_id) AS student_count
FROM
    courses c
LEFT JOIN
    students_courses sc ON c.course_id = sc.courses_course_id
JOIN
    students s ON sc.students_student_id = s.student_id
WHERE
    s.semester = 4
GROUP BY
    c.name;

-- Select 19: Retrieve the faculty with the highest average grade across all courses.
SELECT
    f.name AS faculty_name,
    AVG(g.grade) AS average_grade
FROM
    faculties f
JOIN
    students s ON f.faculty_id = s.faculties_facultie_id
JOIN
    grades g ON s.student_id = g.students_student_id
GROUP BY
    f.name
ORDER BY
    AVG(g.grade) DESC
FETCH FIRST 1 ROW ONLY;

-- Select 20: Retrieve the courses that have at least one student with a grade below a certain threshold.
SELECT
    c.name AS course_name,
    MIN(g.grade) AS min_grade_threshold
FROM
    courses c
JOIN
    grades g ON c.course_id = g.courses_course_id
GROUP BY
    c.name
HAVING
    MIN(g.grade) < 60;

-- Select 21: Retrieve the students who belong to multiple groups.
SELECT
    s.name AS student_name,
    s.surname AS student_surname,
    COUNT(gs.groups_group_id) AS group_count
FROM
    students s
JOIN
    groups_students gs ON s.student_id = gs.students_student_id
GROUP BY
    s.name, s.surname
HAVING
    COUNT(gs.groups_group_id) > 1;

-- Select 22: Retrieve courses that have no assigned teachers.
SELECT
    c.name AS course_name
FROM
    courses c
LEFT JOIN
    teachers_courses tc ON c.course_id = tc.courses_course_id
WHERE
    tc.teachers_teacher_id IS NULL;

-- Select 23: Retrieve the average semester for each faculty.
SELECT
    f.name AS faculty_name,
    AVG(s.semester) AS average_semester
FROM
    faculties f
JOIN
    students s ON f.faculty_id = s.faculties_facultie_id
GROUP BY
    f.name;

-- Select 24: Retrieve the students who are not enrolled in any course.
SELECT
    s.name AS student_name,
    s.surname AS student_surname
FROM
    students s
LEFT JOIN
    students_courses sc ON s.student_id = sc.students_student_id
WHERE
    sc.courses_course_id IS NULL;





-- Select 25: Retrieve the courses with the highest and lowest average grades.
WITH CourseAverages AS (
    SELECT
        c.course_id,
        c.name AS course_name,
        AVG(g.grade) AS average_grade
    FROM
        courses c
    LEFT JOIN
        grades g ON c.course_id = g.courses_course_id
    GROUP BY
        c.course_id, c.name
)
SELECT
    course_name,
    average_grade
FROM
    CourseAverages
WHERE
    average_grade = (SELECT MAX(average_grade) FROM CourseAverages)
    OR average_grade = (SELECT MIN(average_grade) FROM CourseAverages)
ORDER BY average_grade DESC NULLS LAST;


