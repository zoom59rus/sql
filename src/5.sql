-- CREATE TABLE IF NOT EXISTS customers
-- (
--     id   int,
--     name varchar(255),
--     PRIMARY KEY (id)
-- );
--
-- CREATE TABLE IF NOT EXISTS orders
-- (
--     id          int,
--     customersId int,
--     PRIMARY KEY (id)
-- );
--
-- TRUNCATE TABLE customers;
--
-- INSERT INTO customers(id, name)
-- VALUES ('1', 'Joe'),
--        ('2', 'Henry'),
--        ('3', 'Sam'),
--        ('4', 'Max');
--
-- TRUNCATE TABLE orders;
--
-- INSERT INTO orders(id, customersId)
-- VALUES ('1', '3'),
--        ('2', '1');

SELECT name
FROM customers LEFT JOIN orders ON customers.id=orders.customersid
WHERE customersid IS NULL;
