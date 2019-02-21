# INSERT 插入完整的行
INSERT INTO customers
    VALUE (NULL, 'Pep E. LaPew', '100 Main Street', 'Los Angeles', 'CA', '90046', 'USA', NULL, NULL);
INSERT INTO customers(cust_id,CUST_NAME, CUST_ADDRESS, CUST_CITY, CUST_STATE, CUST_ZIP, CUST_COUNTRY, CUST_CONTACT, CUST_EMAIL)
    VALUE (10006,'Koishi', 'DLD', 'Old Hell', 'HB', '514', 'CN', NULL, NULL);
# 一般不要使用没有明确给出列的列表的 INSERT 语句

# 插入多个行
INSERT INTO customers(CUST_NAME, CUST_ADDRESS, CUST_CITY, CUST_STATE, CUST_ZIP, CUST_COUNTRY)
    VALUE ('Pep E. LaPew', '100 Main Street', 'Los Angeles', 'CA', '90046', 'USA'),
    ('M. Martian', '42 Galaxy Way','New York', 'NY', '11213', 'USA');