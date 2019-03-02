# 创建表
CREATE TABLE customers
(
    cust_id      int       NOT NULL AUTO_INCREMENT,
    cust_name    char(50)  NOT NULL,
    cust_address char(50)  NULL,
    cust_city    char(50)  NULL,
    cust_state   char(5)   NULL,
    cust_zip     char(10)  NULL,
    cust_country char(50)  NULL,
    cust_contact char(50)  NULL,
    cust_email   char(255) NULL,
    primary key (cust_id)
) ENGINE = InnoDB;

# 更改表
ALTER TABLE vendors
ADD vend_phone char(20);

ALTER TABLE vendors
DROP COLUMN vend_phone;

# 删除表
DROP TABLE customers2;

# 重命名表
RENAME TABLE customers2 TO customers3;