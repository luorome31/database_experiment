-- 获取指定订单ID的订单行项目列表
SELECT 
    ORDERID, 
    LINENUM AS lineNumber, 
    ITEMID, 
    QUANTITY, 
    UNITPRICE 
FROM 
    LINEITEM 
WHERE 
    ORDERID = 1001;

-- 插入订单行项目
INSERT INTO LINEITEM (ORDERID, LINENUM, ITEMID, QUANTITY, UNITPRICE) 
VALUES (1001, 1, 'K9-BD-01', 2, 39.99);
