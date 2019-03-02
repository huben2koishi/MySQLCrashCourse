# UPDATE 更新数据
UPDATE customers
SET cust_email = 'elmer@fudd.com'
WHERE cust_id = 10005;

# 更新多个列
UPDATE customers
SET cust_name = 'The Fudds', cust_email = 'elmers@fudd.com'
WHERE cust_id = 10005;

# 删除某个值
UPDATE customers
SET cust_email = NULL
WHERE cust_id = 10005;

# DELETE 删除数据
DELETE FROM customers
WHERE cust_id = 10006;

# 删除所有行可使用 `TRUNCATE TABLE;`