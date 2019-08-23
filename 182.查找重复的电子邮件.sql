-- MySQL
-- 182.查找重复的电子邮件

SELECT Email
    FROM Person
        GROUP BY Email
        HAVING
            count(Email) > 1; -- WHERE 关键字无法与聚合函数一起使用
