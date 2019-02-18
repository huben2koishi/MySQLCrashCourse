# UNION 组合多条SQL语句
SELECT vend_id, prod_id, prod_price
FROM products
WHERE prod_price <= 5
UNION
SELECT vend_id, prod_id, prod_price
FROM products
WHERE vend_id IN (1001,1002);
# 组合查询结果只能用一条 ORDER BY 语句排序