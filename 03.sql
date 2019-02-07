# 显示可用数据库
SHOW DATABASES;

# 选择数据库
USE crashcourse;

# 显示可用数据表
SHOW TABLES;

# 显示表列
SHOW COLUMNS FROM customers;

# SHOW COLUMNS FROM 可简写为 DESCRIBE
DESCRIBE customers;

# 其它 SHOW 语句
SHOW STATUS; # 显示广泛的服务器状态信息
SHOW CREATE DATABASE crashcourse; # 显示创建数据库时的MySQL语句
SHOW CREATE TABLE customers; # 显示创建数据表时的MySQL语句
SHOW GRANTS; # 显示授予用户的安全权限
SHOW ERRORS; # 显示服务器错误信息
SHOW WARNINGS; # 显示服务器警告信息