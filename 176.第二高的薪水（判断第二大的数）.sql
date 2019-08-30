-- MySQL
-- 176.第二高的薪水

SELECT IFNULL(
            (SELECT DISTINCT(Salary)
                FROM Employee
                ORDER BY Salary DESC
                LIMIT 1,1
            ),
            NULL      -- 第二高即从i=1行开始技的第1个
        )
AS SecondHighestSalary