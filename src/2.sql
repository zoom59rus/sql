-- CREATE TABLE IF NOT EXISTS employee
-- (
--     id     int NOT NULL,
--     salary int,
--     PRIMARY KEY (id)
-- );

-- INSERT INTO employee (id, salary)
-- VALUES (1, 100), (2, 200), (3, 300);

SELECT salary
FROM employee
WHERE salary < (SELECT MAX(salary)
                FROM employee)
ORDER BY salary DESC
LIMIT 1;