# AND 操作符, 检索满足所有条件的行
SELECT prod_id, prod_price, prod_name
FROM products
WHERE vend_id = 1003
  AND prod_price <= 10;

# OR 操作符, 检索满足任一条件的行
SELECT prod_name, prod_price
FROM products
WHERE vend_id = 1002
   OR vend_id = 1003;

# 计算次序. AND 优先与 OR
# 任何时候使用同时具有 AND 和 OR 的 WHERE 子句时, 都应使用小括号明确分组操作符

# IN 操作符(类似 OR)
SELECT prod_name, prod_price
FROM products
WHERE vend_id IN (1002, 1003)
ORDER BY prod_name;
# IN 操作符的优势
# 1. 清楚直观
# 2. 计算的次序更容易管理
# 3. 比 OR 执行更快
# 4. 可包含其它 SELECT 语句

# NOT 操作符, 检索不满足条件的行
SELECT prod_name, prod_price
FROM products
WHERE vend_id NOT IN (1002, 1003)
ORDER BY prod_name;