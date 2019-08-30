-- Write your MySQL query statement below
-- 180.连续出现的数字.sql

SELECT DISTINCT L1.Num AS ConsecutiveNums   -- 有可能会出现多次“连续3次出现的情况”
    FROM Logs AS L1 INNER JOIN Logs AS L2 INNER JOIN Logs AS L3
    ON ((L1.Id + 1 = L2.Id)         -- 连续的序号
        AND (L2.Id + 1 = L3.Id))    -- 连续的序号
        AND ((L1.Num = L2.Num)      -- 相同的数值
        AND (L2.Num = L3.Num));     -- 相同的数值
