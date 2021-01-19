-- CREATE TABLE IF NOT EXISTS person
-- (
--     id    int,
--     email varchar(255),
--     PRIMARY KEY (id)
-- );
--
-- INSERT INTO person (id, email)
-- VALUES ('1', 'a@b.com'),
--        ('2', 'c@d.com'),
--        ('3', 'a@b.com');

SELECT email
FROM (SELECT email, count(*) AS count FROM person GROUP BY email) as foo
WHERE foo.count > 1;