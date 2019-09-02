-- Write your MySQL query statement below
-- 577.员工奖金.sql


SELECT name, bonus
    FROM Employee LEFT JOIN Bonus   -- 左连接以保留“没有bonus的员工”
    ON Employee.empId = Bonus.empId
    WHERE (Bonus.bonus < 1000) OR (Bonus.bonus IS NULL);