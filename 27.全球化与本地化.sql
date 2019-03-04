# 查看字符集
SHOW CHARACTER SET;

# 查看校对
SHOW COLLATION;

# 查看已使用的字符集和校对
SHOW VARIABLES LIKE 'character%';
SHOW VARIABLES LIKE 'collation%';

# 创建表时指定字符集和校对
CREATE TABLE mytable
(
    columnn1 INT,
    columnn2 VARCHAR(10)
) DEFAULT CHARACTER SET hebrew
  COLLATE hebrew_general_ci;
# 可对特定的列使用特定的字符和校对
CREATE TABLE mytable2
(
    columnn1 INT,
    columnn2 VARCHAR(10) CHARACTER SET latin1 COLLATE latin1_general_ci
) DEFAULT CHARACTER SET hebrew
  COLLATE hebrew_general_ci;