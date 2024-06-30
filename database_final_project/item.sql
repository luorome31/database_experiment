

-- 获取指定产品ID的商品列表
SELECT I.ITEMID, LISTPRICE, UNITCOST, SUPPLIER AS supplierId, I.PRODUCTID AS productId, 
       NAME AS productName, DESCN AS productDescription, CATEGORY AS categoryId, 
       STATUS, ATTR1 AS attribute1, ATTR2 AS attribute2, ATTR3 AS attribute3, 
       ATTR4 AS attribute4, ATTR5 AS attribute5 
FROM ITEM I, PRODUCT P 
WHERE P.PRODUCTID = I.PRODUCTID AND I.PRODUCTID = 'P001';

-- 获取指定商品ID的商品详细信息
SELECT I.ITEMID, LISTPRICE, UNITCOST, SUPPLIER AS supplierId, I.PRODUCTID AS productId, 
       NAME AS productName, DESCN AS productDescription, CATEGORY AS categoryId, 
       STATUS, ATTR1 AS attribute1, ATTR2 AS attribute2, ATTR3 AS attribute3, 
       ATTR4 AS attribute4, ATTR5 AS attribute5, QTY AS quantity 
FROM ITEM I, INVENTORY V, PRODUCT P 
WHERE P.PRODUCTID = I.PRODUCTID AND I.ITEMID = V.ITEMID AND I.ITEMID = 'I001';

-- 获取指定商品ID的库存数量
SELECT QTY AS QUANTITY 
FROM INVENTORY 
WHERE ITEMID = 'I001';

-- 更新指定商品ID的库存数量
UPDATE INVENTORY 
SET QTY = QTY - 5 
WHERE ITEMID = 'I001';
