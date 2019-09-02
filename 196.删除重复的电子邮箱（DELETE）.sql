-- Write your MySQL query statement below
-- 196.删除重复的电子邮箱.sql

DELETE P1   -- 在使用DELETE之前，先用SELECT检查
    FROM Person AS P1 INNER JOIN Person AS P2
    ON P1.Email = P2.Email AND P1.Id > P2.Id;