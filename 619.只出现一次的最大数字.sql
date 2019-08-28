# Write your MySQL query statement below
-- 619.只出现一次的最大数字

-- MySQL
-- 619.只出现一次的最大数字.sql

SELECT IFNULL(
        -- 如果非NULL
            (SELECT num
                FROM my_numbers
                GROUP BY num
                HAVING COUNT(num) = 1
                ORDER BY num DESC limit 1
            ),
        -- 如果为NULL
        NULL
        ) AS num;



/*解法二：
SELECT(                             -- 可以通过嵌套SELECT的方式自动返回NULL，从而不用IFNULL()
    SELECT num
        FROM my_numbers
        GROUP BY num
        HAVING count(*)=1
        ORDER BY num DESC limit 1   -- 在“只出现一次”的基础上判断最大
) AS num;
*/
