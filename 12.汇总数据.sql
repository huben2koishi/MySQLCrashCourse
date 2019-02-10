# AVG() 返回指定列的平均值
SELECT AVG(prod_price) AS avg_price
FROM products
WHERE vend_id = 1003;

# COUNT() 返回表中行的数目或符合特定条件的行的数目
SELECT COUNT(*) AS num_cust
FROM customers;

SELECT COUNT(cust_email) AS num_cust
FROM customers;

# MAX() 返回指定列的最大值
SELECT MAX(prod_price) AS max_price
FROM products;

# MIN() 返回指定列的最小值
SELECT MIN(prod_price) AS min_price
FROM products;

# SUM() 返回指定列值的和
SELECT SUM(quantity) AS items_ordered
FROM orderitems
WHERE order_num = 20005;

SELECT SUM(item_price * quantity) AS total_price
FROM orderitems
WHERE order_num = 20005;

# DISTINCT 指定唯一
SELECT (prod_price) AS avg_price
FROM products
WHERE vend_id = 1003;

# SELECT 语句可包含多个聚集函数
SELECT COUNT(*)        AS num_items,
       MIN(prod_price) AS price_min,
       MAX(prod_price) AS price_max,
       AVG(prod_price) AS price_avg
FROM products;