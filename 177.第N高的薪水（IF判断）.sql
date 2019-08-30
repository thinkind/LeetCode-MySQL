-- 解决思路：将N“绝对化”，即直接降序排列LIMIT N（获得N+1个数），那么第i=1个（从上往下数第二个）便是逻辑上第N高了
-- 注意需要考虑极端情况：N如果大于实际的行数呢？那么判断为NULL

-- 177.第N高的薪水.sql
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    RETURN (
        -- Write your MySQL query statement below.
        SELECT IF(
            -- 判断条件
            (SELECT COUNT(*)
                FROM(SELECT DISTINCT Salary FROM Employee
                ) Employee_A
            ) < N,        

            -- 当判断条件为真时
            NULL,

            -- 当判断条件为假时
            (SELECT Salary
                FROM(SELECT DISTINCT Salary         -- 需要加上DISTINCT
                    FROM Employee
                    ORDER BY Salary DESC LIMIT N    -- 降序取前N个（0 ~ N-1）
                ) Employee_B                -- 给派生的表取一个别名
                ORDER BY Salary LIMIT 1     -- 即i = N-1 （第N高）
             )
        )      
    );
END

/*
-- 另一种解法：更为简洁，但SET语句在"below"上面不符合“非题设要求”
-- 177.第N高的薪水.sql

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N - 1;
  RETURN (
      -- Write your MySQL query statement below.
      SELECT IFNULL(Salary,NULL)    -- IFNULL的使用方法
          FROM(
              SELECT DISTINCT Salary
              FROM Employee
          ) Employee_A
          ORDER BY Salary DESC
          LIMIT N, 1    -- LIMIT中参数不可以有运算，那么如何表示N-1？
  );
END
*/
