-- 获取特定名称序列的当前值
SELECT name, nextid
FROM SEQUENCE
WHERE NAME = 'order_sequence';

-- 更新特定名称序列的下一个值
UPDATE SEQUENCE
SET NEXTID = 101
WHERE NAME = 'order_sequence';

