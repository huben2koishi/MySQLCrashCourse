# GROUP BY 字句, 创建分组
SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id;

# HAVING 字句, 过滤分组
SELECT  cust_id, COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*)>=2;

SELECT vend_id, COUNT(*) AS num_prods
FROM products
WHERE prod_price >=10
GROUP BY vend_id
HAVING COUNT(*)>=2;

# 在使用 GROUP BY 后, 应该给出 ORDER BY字句, 保证数据正确排序

# SELECT 子句顺序
#         SELECT -> FROM -> WHERE -> GROUP BY -> HAVING -> ORDER BY -> LIMIT