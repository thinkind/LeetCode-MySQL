-- Write your MySQL query statement below
-- 601.体育馆的人流量.sql

/*
思路：判断依据有两个：一是日期（符合自然逻辑），二是Id
但是有日期判断时会遇到两个问题：
1. 跨月计算需要用TIMESTAMPDIFF函数                TIMESTAMPDIFF(DAY,date1,date2) = 2 表示date2-date1=2天（可以跨月）
2. 测试用例有问题！！！5-29,5-30,6-01也被认为是连续三天（5-31数据缺失，大概是出题人忘记5月有31天了吧）
*/

SELECT S1.Id, S1.visit_date, S1.people
    FROM stadium AS S1 INNER JOIN stadium AS S2 INNER JOIN stadium AS S3     -- S1,S2,S3分别对应第一天、第二天、第三天
    ON (S1.Id = S2.Id - 1) AND  (S1.Id = S3.Id - 2)
    WHERE (S1.people >= 100)  AND (S2.people >= 100) AND (S3.people >= 100)     -- S1,S2,S3的人流都高于100
UNION
SELECT S2.Id, S2.visit_date, S2.people
    FROM stadium AS S1 INNER JOIN stadium AS S2 INNER JOIN stadium AS S3     -- S1,S2,S3分别对应第一天、第二天、第三天
    ON (S1.Id = S2.Id - 1) AND  (S1.Id = S3.Id - 2)
    WHERE (S1.people >= 100)  AND (S2.people >= 100) AND (S3.people >= 100)     -- S1,S2,S3的人流都高于100
UNION
SELECT S3.Id, S3.visit_date, S3.people
    FROM stadium AS S1 INNER JOIN stadium AS S2 INNER JOIN stadium AS S3     -- S1,S2,S3分别对应第一天、第二天、第三天
    ON (S1.Id = S2.Id - 1) AND  (S1.Id = S3.Id - 2)
    WHERE (S1.people >= 100)  AND (S2.people >= 100) AND (S3.people >= 100)     -- S1,S2,S3的人流都高于100

ORDER BY Id;
