-- MySQL
-- LearnSQL-InnerJoin.sql
-- 检索所有客户及每个客户所下订单数

SELECT Customers, cust_id, COUNT(Orders.order_num) AS num_ord
    FROM Customers INNER JOIN Orders
    ON Customers.cust_id = Orders.cust_id
    GROUP BY Customers.cust_id