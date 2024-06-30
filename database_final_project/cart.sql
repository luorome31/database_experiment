-- 将商品添加到购物车
INSERT INTO cart (username, itemId, number) VALUES ('test_user', 'EST-1', 2) ON DUPLICATE KEY UPDATE number = number + 2;

-- 从购物车中移除指定商品
DELETE FROM cart WHERE username = 'test_user' AND itemId = 'EST-1';

-- 更新购物车中商品的数量
UPDATE cart SET number = 3 WHERE username = 'test_user' AND itemId = 'EST-1';

-- 获取指定用户的购物车中所有商品
SELECT * FROM cart WHERE username = 'test_user';

-- 删除指定用户的购物车中所有商品
DELETE FROM cart WHERE username = 'test_user';
