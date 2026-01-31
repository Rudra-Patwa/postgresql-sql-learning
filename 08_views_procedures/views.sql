-- View to show basic student information

CREATE VIEW student_basic_info AS
SELECT
    student_id,
    name,
    age
FROM students;
