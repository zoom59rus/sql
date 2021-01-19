-- CREATE TABLE IF NOT EXISTS employee(
--     id int not null,
--     name varchar(255),
--     salary int,
--     managerId int,
--     PRIMARY KEY (id)
-- );

-- TRUNCATE TABLE employee;
--
-- INSERT INTO employee (id, name, salary, managerId)
-- VALUES ('1', 'Joe', '70000', '3'),
--        ('2', 'Henry', '80000', '4'),
--        ('3', 'Sam', '60000', null),
--        ('4', 'Max', '90000', null);

-- SELECT *
-- FROM employee LEFT JOIN (SELECT * FROM employee WHERE employee.managerid!=null) AS foo ON employee.id=foo.managerid

SELECT employee.name
FROM employee
         JOIN (SELECT *
               FROM employee
               WHERE managerid IS NULL) AS foo ON employee.managerid = foo.id
WHERE employee.salary > foo.salary