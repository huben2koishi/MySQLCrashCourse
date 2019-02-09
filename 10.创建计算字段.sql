# 拼接字段
SELECT CONCAT(vend_name, '(', vend_country, ')')
FROM vendors
ORDER BY vend_name;

# 去除多余空格
# LTRIM() 去除字符串左侧空格
# RTRIM() 去除字符串右侧空格
# TRIM()  去除字符串两端空格
SELECT CONCAT(RTRIM(vend_name), '__', RTRIM(vend_country))
FROM vendors
ORDER BY vend_name;

# 使用别名 AS
SELECT CONCAT(RTRIM(vend_name), '__', RTRIM(vend_country)) AS vend_title
FROM vendors
ORDER BY vend_name;

# 执行算数计算
SELECT prod_id, quantity, item_price, quantity * item_price AS expanded_price
FROM orderitems
WHERE order_num = 20005;