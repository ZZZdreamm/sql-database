CREATE OR REPLACE TRIGGER enforce_grade_constraints
BEFORE INSERT OR UPDATE ON grades
FOR EACH ROW
DECLARE
  invalid_grade EXCEPTION;
BEGIN
  IF :NEW.grade < 0 OR :NEW.grade > 100 THEN
    RAISE invalid_grade;
  END IF;
EXCEPTION
  WHEN invalid_grade THEN
    RAISE_APPLICATION_ERROR(-20001, 'Invalid grade. Grade must be between 0 and 100.');
END;
/


CREATE OR REPLACE TRIGGER prevent_delete_course_with_students
BEFORE DELETE ON courses
FOR EACH ROW
DECLARE
  student_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO student_count
  FROM students_courses
  WHERE courses_course_id = :OLD.course_id;

  IF student_count > 0 THEN
    RAISE_APPLICATION_ERROR(-20002, 'Cannot delete the course. Students are enrolled in the course.');
  END IF;
END;
/

CREATE OR REPLACE TRIGGER prevent_future_birthdate
BEFORE INSERT OR UPDATE ON students
FOR EACH ROW
DECLARE
    current_date DATE;
BEGIN
    SELECT SYSDATE INTO current_date FROM DUAL;

    IF :NEW.birth_date IS NOT NULL AND :NEW.birth_date > current_date THEN
        RAISE_APPLICATION_ERROR(-20003, 'Invalid birth date. Birth date cannot be in the future.');
    END IF;
END;
/
