# % 通配符, 匹配任意次数的任意字符
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE 'jet%';

# _ 通配符, 匹配任意单个字符
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '_ ton anvil';

# 使用通配符的注意事项
# 1. 不要过度使用通配符
# 2. 不要把通配符放在搜索模式的开始处
# 3. 不要放错通配符的位置