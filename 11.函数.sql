# 文本处理函数
# LENGTH()        返回字符串的长度
# TRIM()          去掉字符串两侧的空格
# LTRIM() RTRIM() 去掉字符串左/右侧的空格
# LEFT() RIGHT()  返回字符串左/右侧的字符
# LOWER() UPPER() 将字符串转为小/大写
# LOCATE()        找出字符串的一个字串
# SUBSTRING()     返回字串的字符
# SOUNDEX()       返回字符串的 SOUNDEX 值
SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

SELECT cust_name,cust_contact
FROM customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Y Lie');

# 日期时间处理函数
# NOW()         返回当前日期和时间
# CURDATE()     返回当前日期
# CURTIME()     返回当前时间
# DATE()        返回一个日期时间的日期
# TIME()        返回一个日期时间的时间
# YEAR()        返回一个日期的年
# MONTH()       返回一个日期的月
# DAY()         返回一个日期的日
# DAYOFWEEK()   返回一个日期的星期几
# HOUR()        返回一个时间的时
# MINUTE()      返回一个时间的分
# SECOND()      返回一个时间的秒
# DATE_FORMAT() 返回格式化的日期或时间
# ADDDATE()     增加一个日期
# ADDTIME()     增加一个时间
# DATE_ADD()    高度灵活的日期运算函数
# DATEDIFF()    计算两个日期之差

