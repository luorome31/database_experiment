-- 添加记录到日志表
INSERT INTO LOGSHEET (userId, record, recordDate) VALUES ('test', 'User logged in', '2024-06-30');

-- 搜索指定用户的记录
SELECT userId AS username, record, recordDate FROM LOGSHEET WHERE userId = 'j2ee';
