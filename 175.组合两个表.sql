-- Write your MySQL query statement below
-- 175.组合两个表.sql

SELECT FirstName, LastName, City, State
FROM Person LEFT JOIN Address   -- 左联结，地址NULL也要保留姓名
    ON Person.PersonId = Address.PersonId;