SET SERVEROUTPUT ON;

----------------------------------------------------------------------------------------------------
DECLARE
    CURSOR student_course_cursor IS
        SELECT s.name AS student_name, s.surname AS student_surname, c.name AS course_name
        FROM students s
        JOIN students_courses sc ON s.student_id = sc.students_student_id
        JOIN courses c ON sc.courses_course_id = c.course_id;

    v_student_name students.name%TYPE;
    v_student_surname students.surname%TYPE;
    v_course_name courses.name%TYPE;
BEGIN
    OPEN student_course_cursor;

    LOOP
        FETCH student_course_cursor INTO v_student_name, v_student_surname, v_course_name;
        EXIT WHEN student_course_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Student: ' || v_student_name || ' ' || v_student_surname || ', Course: ' || v_course_name);
    END LOOP;

    CLOSE student_course_cursor;
END;
/

--------------------------------------------------------------------------------------------------------------
DECLARE
    CURSOR course_students_count_cursor IS
        SELECT c.name AS course_name, COUNT(sc.students_student_id) AS students_count
        FROM courses c
        LEFT JOIN students_courses sc ON c.course_id = sc.courses_course_id
        GROUP BY c.name;

    v_course_name courses.name%TYPE;
    v_students_count NUMBER;
BEGIN
    OPEN course_students_count_cursor;

    LOOP
        FETCH course_students_count_cursor INTO v_course_name, v_students_count;
        EXIT WHEN course_students_count_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Course: ' || v_course_name || ', Students Count: ' || v_students_count);
    END LOOP;

    CLOSE course_students_count_cursor;
END;
/

--------------------------------------------------------------------------------------------------------

DECLARE
    CURSOR group_student_count_cursor IS
        SELECT g.group_id, COUNT(gs.students_student_id) AS student_count
        FROM groups g
        LEFT JOIN groups_students gs ON g.group_id = gs.groups_group_id
        GROUP BY g.group_id;

    v_group_id groups.group_id%TYPE;
    v_student_count NUMBER;
BEGIN
    OPEN group_student_count_cursor;

    LOOP
        FETCH group_student_count_cursor INTO v_group_id, v_student_count;
        EXIT WHEN group_student_count_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Group ID: ' || v_group_id || ', Student Count: ' || v_student_count);
    END LOOP;

    CLOSE group_student_count_cursor;
END;
/

