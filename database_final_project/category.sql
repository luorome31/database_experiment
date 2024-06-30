-- 获取所有类别列表
SELECT CATID AS categoryId, NAME, DESCN AS description FROM CATEGORY;

-- 获取指定类别
SELECT CATID AS categoryId, NAME, DESCN AS description FROM CATEGORY WHERE CATID = 'FISH';
