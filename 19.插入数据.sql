# INSERT 插入完整的行
INSERT INTO customers
    VALUE (NULL, 'Pep E. LaPew', '100 Main Street', 'Los Angeles', 'CA', '90046', 'USA', NULL, NULL);
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)
    VALUE (10006,'Koishi', 'DLD', 'Old Hell', 'HB', '514', 'CN', NULL, NULL);
# 一般不要使用没有明确给出列的列表的 INSERT 语句

# 插入多个行
INSERT INTO customers(cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country)
    VALUE ('Pep E. LaPew', '100 Main Street', 'Los Angeles', 'CA', '90046', 'USA'),
    ('M. Martian', '42 Galaxy Way','New York', 'NY', '11213', 'USA');

# 插入检索出的数据
INSERT INTO customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)
SELECT cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email
FROM customers;