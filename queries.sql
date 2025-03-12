--1
SELECT * FROM Goods;
--2
SELECT second_name, first_name, middle_name FROM Customers;
--3
SELECT address FROM Addresses WHERE ID_customer = 1;
--4
SELECT g.product_name, oi.volume
FROM Orders_include oi
JOIN Goods g ON oi.ID_Product = g.ID_Product
WHERE oi.order_number = 5;
--5
SELECT o.order_number, c.second_name, c.first_name, a.address
FROM Orders o
JOIN Customers c ON o.ID_customer = c.ID_customer
JOIN Addresses a ON o.address_number = a.address_number;
