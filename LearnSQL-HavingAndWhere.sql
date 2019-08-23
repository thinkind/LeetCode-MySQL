-- MySQL
-- LearnSQL-Having and WHERE.sql
-- 具有两个以上产品且其价格大于等于4的供应商

SELECT vend_id, COUNT(*) AS num_prods
    FROM Products
    WHERE prod_price >= 4   -- 数据分组前进行过滤
    GROUP BY vend_id
    HAVING COUNT(*) >= 2;   -- 数据分组后进行过滤