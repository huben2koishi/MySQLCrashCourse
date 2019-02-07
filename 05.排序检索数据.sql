# 排序数据
SELECT prod_name
FROM products
ORDER BY prod_name;

# 按多个列排序
SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price, prod_name;

# 降序排序 DESC (默认为升序排序 ASC)
SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC;

# ORDER BY 与 LIMIT 组合
SELECT prod_price
FROM products
ORDER BY prod_price DESC
LIMIT 1;

# 使用 ORDER BY 时, 确保它在 FROM 子句之后
# 使用 LIMIT 时, 必须位于 ORDER BY 之后