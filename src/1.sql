-- CREATE TABLE person
-- (
--     id        int NOT NULL,
--     firstName varchar(255),
--     lastName  varchar(255),
--     PRIMARY KEY (id)
-- );
--
-- CREATE TABLE address
-- (
--     id       int NOT NULL,
--     personId int,
--     city     varchar(255),
--     state    varchar(255),
--     PRIMARY KEY (id)
-- );
--
-- TRUNCATE TABLE person;
--
-- INSERT INTO person (id, firstName, lastName)
-- VALUES (1, 'Wang', 'Allen');
--
-- TRUNCATE TABLE address;
--
-- INSERT INTO address (id, personId, city, state)
-- VALUES (1, 2, 'New York City', 'New York');

SELECT firstName, lastName, city, state
FROM person LEFT JOIN address ON person.id = address.personid;