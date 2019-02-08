# 使用 WHERE 子句, 根据指定的搜索条件对检索的数据进行过滤
SELECT prod_name, prod_price
FROM products
WHERE prod_price = 2.50;

# 同时使用 WHERE 和 ORDER BY 子句时, 应保证 ORDER BY 在 WHERE 之后

# WHERE 子句操作符   说明
#           =       等于
#           <>      不等于
#           !=      不等于
#           <       小于
#           <=      小于等于
#           >       大于
#           >=      大于等于
#           BETWEEN 指定两个值之间

# 检查单个值
SELECT prod_name, prod_price
FROM products
     # WHERE prod_name = 'fuses';
     # WHERE prod_price < 10;
WHERE vend_id != 1003;

# 范围值检查
SELECT prod_name, prod_price
FROM products
WHERE prod_price BETWEEN 5 AND 10;

# 空值检查
SELECT cust_id
FROM customers
WHERE cust_email IS NULL;