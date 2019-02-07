# 检索单个列
SELECT prod_name
FROM products;
# 返回的结果为未排序数据

# 检索多个列
SELECT prod_id, prod_name, prod_price
FROM products;

# 检索所有列
SELECT *
FROM products;
# 尽量避免使用 * , 不必要的检索会降低性能

# 检索不同的行
SELECT DISTINCT vend_id #使用 DISTINCT 会只返回唯一的行
FROM products;

# 限制返回的结果
SELECT prod_name
FROM products
LIMIT 5; # 使用 LIMIT , 返回的结果不会多于预设值
# 若要指定返回的行, 可配合 OFFSET 使用
SELECT prod_name
FROM products
LIMIT 4 OFFSET 3; # 从行3开始, 取4行

# 使用完全限定的表名
SELECT  products.prod_name
FROM crashcourse.products;