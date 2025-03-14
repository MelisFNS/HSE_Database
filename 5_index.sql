-- Индекс для ускорения поиска по имени товара
CREATE INDEX idx_goods_product_name ON Goods (product_name);

-- Индекс для ускорения поиска по фамилии покупателя
CREATE INDEX idx_customers_second_name ON Customers (second_name);

-- Индекс для ускорения поиска по адресу
CREATE INDEX idx_addresses_address ON Addresses (address);

-- Индекс для ускорения поиска заказов по ID покупателя
CREATE INDEX idx_orders_id_customer ON Orders (ID_customer);

-- Индекс для ускорения поиска заказанных товаров по ID товара
CREATE INDEX idx_orders_include_id_product ON Orders_include (ID_Product);
