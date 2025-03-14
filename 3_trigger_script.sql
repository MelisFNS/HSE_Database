CREATE OR REPLACE FUNCTION check_product_price()
RETURNS TRIGGER AS $$
BEGIN
    -- Проверяем, что цена не отрицательная
    IF NEW.product_price < 0 THEN
        RAISE EXCEPTION 'Цена товара не может быть отрицательной: %', NEW.product_price;
    END IF;
    RETURN NEW; -- Продолжаем операцию, если проверка пройдена
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER goods_price_check_trigger
BEFORE INSERT OR UPDATE ON Goods
FOR EACH ROW
EXECUTE FUNCTION check_product_price();
