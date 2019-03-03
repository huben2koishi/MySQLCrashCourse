# 创建触发器
CREATE TRIGGER newproduct
    AFTER INSERT
    ON products
    FOR EACH ROW SELECT 'Product added';

# 删除触发器
DROP TRIGGER newproduct;

# INSERT 触发器
CREATE TRIGGER neworder
    AFTER INSERT
    ON orders
    FOR EACH ROW SELECT NEW.order_num;

INSERT INTO orders(order_date, cust_id)
VALUES (NOW(), 10001);

# DELETE 触发器
CREATE TRIGGER deleteorder
    BEFORE DELETE
    ON orders
    FOR EACH ROW
BEGIN
    INSERT INTO archive_orders(order_num, order_date, cust_id)
    VALUES (OLD.order_num, OLD.order_date, OLD.cust_id);
end;

# UPDATE 触发器
CREATE TRIGGER updatevendor
    BEFORE UPDATE
    ON vendors
    FOR EACH ROW SET NEW.vend_state = UPPER(NEW.vend_state);