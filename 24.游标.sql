CREATE PROCEDURE processorders()
BEGIN
    # 创建游标
    DECLARE ordernumbers CURSOR
        FOR
        SELECT order_num FROM orders;

    DECLARE o INT;

    # 打开游标
    OPEN ordernumbers;

    # 使用游标数据
    FETCH ordernumbers INTO o;
    # 检索第一行

    # 关闭游标
    CLOSE ordernumbers;

END;

CREATE PROCEDURE processorders()
BEGIN
    DECLARE done BOOLEAN DEFAULT 0;
    DECLARE o INT;

    DECLARE ordernumbers CURSOR
        FOR
        SELECT order_num FROM orders;

    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

    OPEN ordernumbers;

    REPEAT
        FETCH ordernumbers INTO O;
    UNTIL done END REPEAT;

    CLOSE ordernumbers;
end;

CREATE PROCEDURE processorders()
BEGIN
    DECLARE done BOOLEAN DEFAULT 0;
    DECLARE o INT;
    DECLARE t DECIMAL(8, 2);

    DECLARE ordernumbers CURSOR
        FOR
        SELECT order_num FROM orders;

    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

    CREATE TABLE IF NOT EXISTS ordertotals
    (
        ordernum INT,
        total    DECIMAL(8, 2)
    );

    OPEN ordernumbers;

    REPEAT
        FETCH ordernumbers INTO o;

        CALL ordertotal(O, 1, t);

        INSERT INTO ordertotals(ordernum, total) VALUES (o, t);

    UNTIL done END REPEAT;

    CLOSE ordernumbers;
end;

select * from ordertotals;