CREATE OR REPLACE PROCEDURE calculate_average_grade(p_course_id_param IN NUMBER) IS
    CURSOR grade_cursor IS
        SELECT grade
        FROM grades
        WHERE courses_course_id = p_course_id_param;

    v_grade grades.grade%TYPE;
    v_total_grade NUMBER := 0;
    v_count NUMBER := 0;
    v_average_grade NUMBER;
BEGIN
    OPEN grade_cursor;

    LOOP
        FETCH grade_cursor INTO v_grade;
        EXIT WHEN grade_cursor%NOTFOUND;

        v_total_grade := v_total_grade + v_grade;
        v_count := v_count + 1;
    END LOOP;

    CLOSE grade_cursor;

    IF v_count > 0 THEN
        v_average_grade := v_total_grade / v_count;
        DBMS_OUTPUT.PUT_LINE('Average Grade for Course ' || p_course_id_param || ': ' || v_average_grade);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No grades found for the course ' || p_course_id_param);
    END IF;
END;
/


------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE calculate_student_average_grade(p_student_id_param IN NUMBER) IS
    CURSOR student_grades_cursor IS
        SELECT grade
        FROM grades
        WHERE students_student_id = p_student_id_param;

    v_grade grades.grade%TYPE;
    v_total_grade NUMBER := 0;
    v_count NUMBER := 0;
    v_average_grade NUMBER;
BEGIN
    OPEN student_grades_cursor;

    LOOP
        FETCH student_grades_cursor INTO v_grade;
        EXIT WHEN student_grades_cursor%NOTFOUND;

        v_total_grade := v_total_grade + v_grade;
        v_count := v_count + 1;
    END LOOP;

    CLOSE student_grades_cursor;

    IF v_count > 0 THEN
        v_average_grade := v_total_grade / v_count;
        DBMS_OUTPUT.PUT_LINE('Average Grade for Student ' || p_student_id_param || ': ' || v_average_grade);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No grades found for the student ' || p_student_id_param);
    END IF;
END;
/


-----------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE calculate_max_student_average_grade(p_faculty_id_param IN NUMBER) IS
    CURSOR student_average_grades_cursor IS
        SELECT s.student_id, AVG(g.grade) AS average_grade
        FROM students s
        LEFT JOIN grades g ON s.student_id = g.students_student_id
        WHERE s.faculties_facultie_id = p_faculty_id_param
        GROUP BY s.student_id;

    v_student_id students.student_id%TYPE;
    v_max_average_grade NUMBER := NULL;
BEGIN
    OPEN student_average_grades_cursor;

    LOOP
        FETCH student_average_grades_cursor INTO v_student_id, v_max_average_grade;
        EXIT WHEN student_average_grades_cursor%NOTFOUND;

        IF v_max_average_grade IS NULL OR v_max_average_grade < v_max_average_grade THEN
            v_max_average_grade := v_max_average_grade;
        END IF;
    END LOOP;

    CLOSE student_average_grades_cursor;

    IF v_max_average_grade IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Maximum Average Grade for Faculty ' || p_faculty_id_param || ': ' || v_max_average_grade);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No students found for the faculty ' || p_faculty_id_param);
    END IF;
END;
/

