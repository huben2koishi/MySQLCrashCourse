# 创建存储过程
CREATE PROCEDURE productpricing()
BEGIN
    SELECT AVG(prod_price) AS priceaverage
    FROM products;
END;

# 调用存储过程
CALL productpricing();

# 删除存储过程
DROP PROCEDURE productpricing;

# 使用参数
# IN 传入参数
# OUT 传出参数
CREATE PROCEDURE productpricing(OUT pl DECIMAL(8, 2),
                                OUT ph DECIMAL(8, 2),
                                OUT pa DECIMAL(8, 2))
BEGIN
    SELECT MIN(prod_price) INTO pl
    FROM products;
    SELECT MAX(prod_price) INTO ph
    FROM products;
    SELECT AVG(prod_price) INTO pa
    FROM products;
END;

CALL productpricing(@pricelow, @pricehigh, @priceaverage);
SELECT @priceaverage;
SELECT @pricehigh, @pricelow, @priceaverage;

CREATE PROCEDURE ordertotal(IN onumber INT,
                            OUT ototal DECIMAL(8, 2))
BEGIN
    SELECT SUM(item_price * quantity)
    FROM orderitems
    WHERE order_num = onumber INTO ototal;
end;

CALL ordertotal(20005, @total);
SELECT @total;

CREATE PROCEDURE ordertotal2(IN onumber INT,
                             IN taxable BOOLEAN,
                             OUT ototal DECIMAL(8, 2))
    COMMENT 'Obtain order total, optionally adding tax'
BEGIN
    DECLARE total DECIMAL(8, 2);
    DECLARE taxrate INT DEFAULT 6;

    SELECT SUM(item_price * quantity)
    FROM orderitems
    WHERE order_num = onumber INTO total;

    IF taxable THEN
        SELECT total+(total/100*taxrate) INTO total;
    end if;

    SELECT total INTO ototal;
end;

CALL ordertotal2(20005,0,@total1);
CALL ordertotal2(20005,1,@total2);
SELECT @total1;
SELECT @total2;

# 检查存储过程
SHOW CREATE PROCEDURE ordertotal2;
SHOW PROCEDURE STATUS ;