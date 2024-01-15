CREATE OR REPLACE FUNCTION has_student_passed(p_student_id_param IN NUMBER) RETURN BOOLEAN IS
    v_failed_courses_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_failed_courses_count
    FROM grades
    WHERE students_student_id = p_student_id_param
      AND grade <= 50;

    RETURN v_failed_courses_count = 0;
END;
/

----------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION get_teacher_courses_count(p_teacher_id_param IN NUMBER) RETURN NUMBER IS
    v_courses_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_courses_count
    FROM teachers_courses
    WHERE teachers_teacher_id = p_teacher_id_param;

    DBMS_OUTPUT.PUT_LINE('Teacher ' || p_teacher_id_param || ' has ' || v_courses_count || ' courses.');
    
    RETURN v_courses_count;
END;
/
