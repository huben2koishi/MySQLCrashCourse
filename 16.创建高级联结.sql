# 使用表别名
SELECT cust_name, cust_contact
FROM customers AS c,
     orders AS o,
     orderitems AS oi
WHERE c.cust_id = o.cust_id
  AND oi.order_num = o.order_num
  AND prod_id = 'TNT2';

# 自联结
# SELECT prod_id, prod_name
# FROM products
# WHERE vend_id = (SELECT vend_id
#                  FROM products
#                  WHERE prod_id = 'DTNTR');
SELECT p1.prod_id, p1.prod_name
FROM products AS p1,
     products AS p2
WHERE p1.vend_id = p2.vend_id
  AND p2.prod_id = 'DTNTR';

# 自然联结
SELECT c.*, o.order_num, o.order_date, oi.prod_id, oi.quantity, oi.item_price
FROM customers AS c, orders AS o, orderitems AS oi