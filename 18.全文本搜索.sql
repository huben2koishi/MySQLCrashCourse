# 最常使用的两个数据库引擎
#     MYISaM 支持全文本搜索
#     InnoDB 不支持全文本搜索

# 进行全文本搜索 MATCH() 指定搜索的列, AGAINST() 指定搜索表达四
SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('rabbit');

SELECT note_text, (MATCH(note_text) AGAINST('rabbit')) AS note
FROM productnotes;

# 查询扩展
SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('anvils' WITH QUERY EXPANSION);

# 布尔文本搜索
SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('anvils' IN BOOLEAN MODE);

