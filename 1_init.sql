CREATE DATABASE test

CREATE TABLE Goods (
    ID_Product SERIAL PRIMARY KEY,
    product_name VARCHAR(100) UNIQUE NOT NULL,
    product_price DECIMAL(10, 2) NOT NULL
);

-- Таблица для хранения всех покупателей
CREATE TABLE Customers (
    ID_customer SERIAL PRIMARY KEY,
    second_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50)
);

-- Таблица для хранения адресов доставки
CREATE TABLE Addresses (
    address_number SERIAL PRIMARY KEY,
    ID_customer INT NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT FK_addresses_customers FOREIGN KEY (ID_customer) REFERENCES Customers(ID_customer)
);

-- Таблица для хранения заказов
CREATE TABLE Orders (
    order_number SERIAL PRIMARY KEY,
    ID_customer INT NOT NULL,
    address_number INT NOT NULL,
    total_cost DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_orders_customers FOREIGN KEY (ID_customer) REFERENCES Customers(ID_customer),
    CONSTRAINT FK_orders_addresses FOREIGN KEY (address_number) REFERENCES Addresses(address_number)
);

-- Таблица для хранения заказанных товаров
CREATE TABLE Orders_include (
    order_number INT NOT NULL,
    ID_Product INT NOT NULL,
    volume INT NOT NULL,  -- или DECIMAL(10, 2) в зависимости от контекста
    CONSTRAINT PK_Orders_include PRIMARY KEY (order_number, ID_Product),
    CONSTRAINT FK_orders_include_orders FOREIGN KEY (order_number) REFERENCES Orders(order_number),
    CONSTRAINT FK_orders_include_goods FOREIGN KEY (ID_Product) REFERENCES Goods(ID_Product)
);
