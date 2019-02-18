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

# 字符类
# [:digit:]  数字
# [:alpha:]  字母
# [:alnum:]  数字和字母
# [:xdigit:] 十六进制数字
# [:lower:]  小写字母
# [:upper:]  大写字母
# [:blank:]  空格和制表(\\t)
# [:cntrl:]  ASCII控制字符(ASCII 0到32和127)
# [:print:]  可打印字符
# [:graph:]  同 [:print:], 不包括空格
# [:space:]  任意空白字符(同[\\f\\n\\r\\t\\v])
# [:punct:]  不在[:alnum:]和[:cntrl:]中的任意字符
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[:upper:]';

# 匹配多个实例
# *      匹配0或1或多个
# +      匹配1或多个
# ?      匹配0或1个
# {n}    匹配n个
# {n,}   匹配不少于n个
# {n, m} 匹配n到m个
SELECT prod_name
FROM products
WHERE prod_name REGEXP '\\([0-9] sticks?\\)'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP '[0-9]{4}'
ORDER BY prod_name;

# 定位符
# ^     文本的开始
# $     文本的结尾
# [:<:] 词的开始
# [:>:] 词的结尾
SELECT prod_name
FROM products
WHERE prod_name REGEXP '^[0-9\\.]'
ORDER BY prod_name;