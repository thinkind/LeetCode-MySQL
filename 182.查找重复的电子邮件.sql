-- MySQL
-- 182.查找重复的电子邮

SELECT Email
    FROM Person
    HAVING count(Email) > 1； -- WHERE 关键字无法与聚合函数一起使用



/*
-- MySQL
-- 182.查找重复的电子邮件（方法2）

SELECT Email
    FROM Person AS P1
    WHERE P1.Email = (SELECT Email FROM Person limit 1) -- limit 1 避免输出重复结果
    limit 1;
*/
    