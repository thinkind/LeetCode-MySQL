-- MySQL
-- Count(*)Where.sql
-- 对特定条件的数据进行计数

SELECT COUNT(*) AS orders
    FROM Orders
    WHERE cust_id = '10001';    -- 检索10001号客户的订单数