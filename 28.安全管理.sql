# 查看用户
SELECT user FROM user;

# 创建用户账号
CREATE USER huben IDENTIFIED BY 'huben';

# 重命名
RENAME USER huben TO huben2koishi;

# 删除用户
DROP USER huben2koishi;

# 查看访问权限
SHOW GRANTS FOR huben;

# 设置访问权限
GRANT SELECT ON crashcourses.* TO huben;

# 撤销访问权限
REVOKE SELECT ON crashcourses.* FROM huben;

# 更改密码
SET PASSWORD FOR huben = PASSWORD('huben');