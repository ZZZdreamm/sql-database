SET SERVEROUTPUT ON;

-- Test 1: Valid grade (Should succeed)
BEGIN
  INSERT INTO grades VALUES (103, 85, 109, 2006);
  DBMS_OUTPUT.PUT_LINE('Test 1 Passed: Valid grade inserted successfully.');
   DELETE FROM grades WHERE grade_id = 103;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 1 Failed: Error occurred - ' || SQLERRM);
END;
/

-- Test 2: Invalid grade (Should fail)
BEGIN
  INSERT INTO grades VALUES (101, 105, 109, 2006);
  DBMS_OUTPUT.PUT_LINE('Test 2 Failed: Error occurred - ' || SQLERRM);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 2 Passed: Grade with invalid value doesnt get inserted.');
END;
/

-- Test 3: Valid update to grade (Should succeed)
BEGIN
  UPDATE grades SET grade = 92 WHERE grade_id = 100;
  DBMS_OUTPUT.PUT_LINE('Test 3 Passed: Valid grade update performed successfully.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 3 Failed: Error occurred - ' || SQLERRM);
END;
/

------------------------------------------------------------------------------------------------
 
-- Test 1: Delete course with no students enrolled (Should succeed)
BEGIN
   INSERT INTO courses VALUES (139, 'Magia');
  DELETE FROM courses WHERE course_id = 139;
  DBMS_OUTPUT.PUT_LINE('Test 1 Passed: Course deleted successfully with no students enrolled.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 1 Failed: Error occurred - ' || SQLERRM);
END;
/

-- Test 2: Try to delete course with students enrolled (Should raise exception)                           
BEGIN
  DELETE FROM courses WHERE course_id = 113;
  DBMS_OUTPUT.PUT_LINE('Test 2 Failed: Course with students enrolled was deleted.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 2 Passed: Attempt to delete course with students caught by the trigger.');
END;
/

-- Test 3: Try to delete non-existent course (Should succeed, as there's nothing to delete)
BEGIN
  DELETE FROM courses WHERE course_id = 9999;
  DBMS_OUTPUT.PUT_LINE('Test 3 Passed: Attempt to delete non-existent course succeeded.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 3 Failed: Error occurred - ' || SQLERRM);
END;
/

----------------------------------------------------------------------------------------------------------------



-- Test 1: Insert student with birth date in the past (Should succeed)
BEGIN
  INSERT INTO students (student_id, name, surname, birth_date, semester, faculties_facultie_id)
  VALUES (3001, 'John', 'Doe', TO_DATE('1995-05-15', 'YYYY-MM-DD'), 5, 110);
  DBMS_OUTPUT.PUT_LINE('Test 1 Passed: Student with birth date in the past inserted successfully.');
    DELETE FROM students WHERE student_id = 3001;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 1 Failed: Error occurred - ' || SQLERRM);
END;
/
--
-- Test 2: Insert student with birth date in the future (Should raise exception)
BEGIN
  INSERT INTO students (student_id, name, surname, birth_date, semester, faculties_facultie_id)
  VALUES (3002, 'Jane', 'Smith', TO_DATE('2030-10-20', 'YYYY-MM-DD'), 3, 2001);
  DBMS_OUTPUT.PUT_LINE('Test 2 Failed: Student with birth date in the future was inserted.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 2 Passed: Attempt to insert student with birth date in the future caught by the trigger.');
END;
/

-- Test 3: Update student with birth date in the past (Should succeed)
BEGIN
  INSERT INTO students (student_id, name, surname, birth_date, semester, faculties_facultie_id)
  VALUES (3001, 'John', 'Doe', TO_DATE('1995-05-15', 'YYYY-MM-DD'), 5, 110);
  
  UPDATE students SET birth_date = TO_DATE('1990-08-25', 'YYYY-MM-DD') WHERE student_id = 3001;
  DBMS_OUTPUT.PUT_LINE('Test 3 Passed: Student with updated birth date in the past successfully.');
   DELETE FROM students WHERE student_id = 3001;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 3 Failed: Error occurred - ' || SQLERRM);
END;
/

-- Test 4: Update student with birth date in the future (Should raise exception)
BEGIN
  UPDATE students SET birth_date = TO_DATE('2035-03-12', 'YYYY-MM-DD') WHERE student_id = 2010;
  DBMS_OUTPUT.PUT_LINE('Test 4 Failed: Student with birth date in the future was updated.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Test 4 Passed: Attempt to update student with birth date in the future caught by the trigger.');
END;
/



