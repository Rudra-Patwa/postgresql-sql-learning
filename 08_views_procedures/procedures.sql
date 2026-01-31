-- Procedure to insert a new student

CREATE OR REPLACE PROCEDURE add_student(
    p_name VARCHAR,
    p_age INT,
    p_email VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO students (name, age, email)
    VALUES (p_name, p_age, p_email);
END;
$$;
CALL add_student('Rohit', 22, 'rohit@gmail.com');


--update to student 
-- Procedure to update student age

CREATE OR REPLACE PROCEDURE update_student_age(
    p_student_id INT,
    p_new_age INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE students
    SET age = p_new_age
    WHERE student_id = p_student_id;
END;
$$;
CALL update_student_age(2, 25);

--Delete a student 
-- Procedure to delete a student by id

CREATE OR REPLACE PROCEDURE delete_student(
    p_student_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM students
    WHERE student_id = p_student_id;
END;
$$;
CALL delete_student(5);

