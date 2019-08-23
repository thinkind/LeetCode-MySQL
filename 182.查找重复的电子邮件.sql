-- MySQL
-- 182.查找重复的电子邮件

SELECT Email
    FROM Person
        GROUP BY Email
        HAVING
            COUNT(Email) > 1; -- WHERE 关键字无法与聚合函数一起使用
