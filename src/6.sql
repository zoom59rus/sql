-- CREATE TABLE IF NOT EXISTS courses
-- (
--     student varchar(255),
--     class   varchar(255)
-- );
--
-- TRUNCATE TABLE courses;
--
-- INSERT INTO courses(student, class)
-- VALUES ('A', 'Math'),
--        ('B', 'English'),
--        ('C', 'Math'),
--        ('D', 'Biology'),
--        ('E', 'Math'),
--        ('F', 'Computer'),
--        ('G', 'Math'),
--        ('H', 'Math'),
--        ('I', 'Math');

SELECT class
FROM (SELECT class, count(*) AS count FROM courses GROUP BY class) AS result
WHERE result.count > 5;