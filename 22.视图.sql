# CREATE VIEW 创建视图
CREATE VIEW productcustomers AS
SELECT cust_name, cust_contact, prod_id
FROM customers,
     orders,
     orderitems
WHERE customers.cust_id = orders.cust_id
  AND orderitems.order_num = orders.order_num;

SELECT cust_name, cust_contact
FROM productcustomers
WHERE prod_id = 'TNT2';

# 使用视图过滤数据
CREATE VIEW customeremaillist AS
SELECT cust_id, cust_name, cust_email
FROM customers
WHERE cust_email IS NOT NULL;

# 视图与计算字段
CREATE VIEW orderitemsexpanded AS
SELECT order_num, prod_id, quantity, item_price, quantity * item_price AS expanded_price
FROM orderitems;

SELECT * FROM orderitemsexpanded
WHERE order_num = 20005;

SELECT vend_id
FROM vendors;