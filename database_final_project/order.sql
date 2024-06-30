-- 插入订单数据
INSERT INTO orders (orderid, userid, orderdate, shipaddr1, shipaddr2, 
                    shipcity, shipstate, shipzip, shipcountry, billaddr1, 
                    billaddr2, billcity, billstate, billzip, billcountry, 
                    courier, totalprice, billtofirstname, billtolastname, 
                    shiptofirstname, shiptolastname, creditcard, exprdate, 
                    cardtype, locale) 
VALUES (1000, 'j2ee', '2024-06-30 00:00:00', 'address1', 'address2', 
        'city', 'state', 'zip', 'country', 'billaddress1', 'billaddress2', 
        'billcity', 'billstate', 'billzip', 'billcountry', 'courier', 
        100.0, 'billfirstname', 'billlastname', 'shipfirstname', 
        'shiplastname', 'creditcard', '12/12', 'cardtype', 'locale');

-- 插入订单状态数据
INSERT INTO ORDERSTATUS (ORDERID, LINENUM, TIMESTAMP, STATUS) 
VALUES (1000, 1, '2024-06-30 00:00:00', 'ok');

-- 根据用户名查询订单数据
SELECT BILLADDR1 AS billAddress1, BILLADDR2 AS billAddress2, BILLCITY, 
       BILLCOUNTRY, BILLSTATE, BILLTOFIRSTNAME, BILLTOLASTNAME, BILLZIP, 
       SHIPADDR1 AS shipAddress1, SHIPADDR2 AS shipAddress2, SHIPCITY, 
       SHIPCOUNTRY, SHIPSTATE, SHIPTOFIRSTNAME, SHIPTOLASTNAME, SHIPZIP, 
       CARDTYPE, COURIER, CREDITCARD, EXPRDATE AS expiryDate, LOCALE, 
       ORDERDATE, ORDERS.ORDERID, TOTALPRICE, USERID AS username, STATUS 
FROM ORDERS, ORDERSTATUS 
WHERE ORDERS.USERID = 'j2ee' 
AND ORDERS.ORDERID = ORDERSTATUS.ORDERID 
ORDER BY ORDERDATE;

-- 根据订单ID查询订单数据
SELECT BILLADDR1 AS billAddress1, BILLADDR2 AS billAddress2, BILLCITY, 
       BILLCOUNTRY, BILLSTATE, BILLTOFIRSTNAME, BILLTOLASTNAME, BILLZIP, 
       SHIPADDR1 AS shipAddress1, SHIPADDR2 AS shipAddress2, SHIPCITY, 
       SHIPCOUNTRY, SHIPSTATE, SHIPTOFIRSTNAME, SHIPTOLASTNAME, SHIPZIP, 
       CARDTYPE, COURIER, CREDITCARD, EXPRDATE AS expiryDate, LOCALE, 
       ORDERDATE, ORDERS.ORDERID, TOTALPRICE, USERID AS username, STATUS 
FROM ORDERS, ORDERSTATUS 
WHERE ORDERS.ORDERID = 1000 
AND ORDERS.ORDERID = ORDERSTATUS.ORDERID;
