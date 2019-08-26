# Write your MySQL query statement below
-- 619.只出现一次的最大数字

SELECT(
    SELECT num
    FROM my_numbers
    GROUP BY num
    HAVING count(*)=1
    ORDER BY num DESC limit 1   -- 在“只出现一次”的基础上判断最大
)   
AS num;