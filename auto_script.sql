-- Генерация данных для Goods
INSERT INTO Goods (product_name, product_price)
SELECT 
    CONCAT('Товар_', FLOOR(RAND() * 1000)),
    FLOOR(RAND() * 1000) + 1
FROM generate_series(1, 100);

-- Генерация данных для Customers
INSERT INTO Customers (second_name, first_name, middle_name)
SELECT 
    CONCAT('Фамилия_', FLOOR(RAND() * 1000)),
    CONCAT('Имя_', FLOOR(RAND() * 1000)),
    CONCAT('Отчество_', FLOOR(RAND() * 1000))
FROM generate_series(1, 50);

-- Генерация данных для Addresses
INSERT INTO Addresses (ID_customer, address)
SELECT 
    FLOOR(RAND() * 50) + 1,
    CONCAT('Адрес_', FLOOR(RAND() * 1000))
FROM generate_series(1, 100);

-- Генерация данных для Orders
INSERT INTO Orders (ID_customer, address_number, total_cost)
SELECT 
    FLOOR(RAND() * 50) + 1,
    FLOOR(RAND() * 100) + 1,
    FLOOR(RAND() * 10000) + 1
FROM generate_series(1, 200);

-- Генерация данных для Orders_include
INSERT INTO Orders_include (order_number, ID_Product, volume)
SELECT 
    FLOOR(RAND() * 200) + 1,
    FLOOR(RAND() * 100) + 1,
    FLOOR(RAND() * 10) + 1
FROM generate_series(1, 500);
