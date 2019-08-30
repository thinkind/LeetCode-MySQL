-- MySQL
-- 181. 超过经理收入的员工

SELECT Name AS Employee
    FROM Employee AS E1
    WHERE salary > (SELECT Salary FROM Employee WHERE Id = E1.ManagerId);  -- 过滤出Manager的Id