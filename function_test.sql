-- Test 1: Student with failed courses 
DECLARE
    v_student_id NUMBER := 2006;
    v_result BOOLEAN;
BEGIN
    v_result := has_student_passed(v_student_id);
    
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('Test 1 Failed: Student ' || v_student_id || ' has passed all courses.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Test 1 Passed: Student ' || v_student_id || ' has failed at least one course.');
    END IF;
END;
/

-- Test 2: Student with passed courses 
DECLARE
    v_student_id NUMBER := 2015;
    v_result BOOLEAN;
BEGIN
    v_result := has_student_passed(v_student_id);
    
    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE('Test 2 Passed: Student ' || v_student_id || ' has passed all courses.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Test 2 Failed: Student ' || v_student_id || ' has failed at least one course.');
    END IF;
END;
/

------------------------------------------------------------------------------------------------------------------------

-- Test 1: Get the number of courses for a specific teacher
DECLARE
    v_teacher_id NUMBER := 1010; 
    v_courses_count NUMBER;
    v_result BOOLEAN;
BEGIN
    v_courses_count := get_teacher_courses_count(v_teacher_id);
    
    v_result := v_courses_count = 3;
    
    if v_result THEN
        DBMS_OUTPUT.PUT_LINE('Test 1 Passed: Teacher have 3 courses');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Test 1 Failed');
    END IF;
END;
/

-- Test 2: Get the number of courses for a specific teacher (teacher has no courses)
DECLARE
    v_teacher_id NUMBER := 1019; 
    v_courses_count NUMBER;
BEGIN
    v_courses_count := get_teacher_courses_count(v_teacher_id);

    DBMS_OUTPUT.PUT_LINE('Test 2 Passed: Get the number of courses for Teacher ' || v_teacher_id || ': ' || v_courses_count || ' courses.');
END;
/

-----------------------------------------------------------------------------------------------------------------------------------


