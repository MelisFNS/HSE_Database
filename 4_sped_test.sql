--1
EXPLAIN ANALYZE
SELECT * FROM Goods WHERE product_price > 500;
--2
EXPLAIN ANALYZE
INSERT INTO Goods (product_name, product_price)
VALUES ('Новый товар', 999.99);
--3
EXPLAIN ANALYZE
UPDATE Goods
SET product_price = product_price * 1.1
WHERE product_price > 500;
