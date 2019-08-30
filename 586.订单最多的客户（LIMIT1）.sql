-- Write your MySQL query statement below
-- 586.订单最多的客户.sql

SELECT customer_number
    FROM orders
    GROUP BY customer_number
    ORDER BY COUNT(customer_number) DESC
    LIMIT 1; -- LIMIT经常打成LIMTI