# 基本字符匹配
SELECT prod_name
FROM products
WHERE prod_name REGEXP '.000'
ORDER BY prod_name;

# 进行 OR 匹配
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000|2000'
ORDER BY prod_name;

# 匹配几个字符之一
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[123] ton'
ORDER BY prod_name;

# 不匹配几个字符
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[^123] ton'
ORDER BY prod_name;

# 匹配范围
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[1-5] ton'
ORDER BY prod_name;

# 匹配特殊字符
SELECT vend_name
FROM vendors
WHERE vend_name REGEXP '\\.'
ORDER BY vend_name;
