-- Write your MySQL query statement below
-- 197.上升的温度.sql

SELECT w1.Id
FROM Weather AS w1 INNER JOIN Weather AS w2 -- w1是当天，w2是昨天
ON (TIMESTAMPDIFF(DAY, w2.RecordDate, w1.RecordDate) = 1) AND (w1.Temperature > w2.Temperature);    -- w1-w2 = 1 DAY


/*
【以下是初始方案的源码和Debug过程】
SELECT w1.Id
FROM Weather AS w1 INNER JOIN Weather AS w2 -- w1是当天，w2是昨天
ON (w1.RecordDate = w2.RecordDate + 1) AND (w1.Temperature > w2.Temperature);

1. 锁定异常：锁定预期输出和实际输出的区别，回看涉及的输入如下：
[636, "1998-10-31", -32]（日期紧邻异常）
[406, "2000-10-10", -75]（序号紧邻异常）
[407, "1998-11-01", -9]	【异常：应该输出但没有输出】
[342, "1998-11-02", -51]（日期紧邻异常）

2. 分析异常：经过观察，输入的特殊之处在于是“月初第一天”，疑似日期计算出错。查看同类输入是否有问题：
[472, "2001-09-30", 4]
[507, "2001-10-01", 38]（同类输入存在相同问题，进一步推断是日期计算错误）

3. 定位异常：初步归因w1.RecordDate = w2.RecordDate + 1不能跨月

4. 修复异常：改用TIMESTAMPDIFF(DAY,'2012-10-01','2013-01-13')函数（后一天减前一天）

5. 验证结果：AC

*/
