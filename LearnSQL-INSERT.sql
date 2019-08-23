-- MySQL
-- LearnSQL-INSERT.sql
-- 跨表复制插入比较

-- 选择B表部分信息插入A表
INSERT TO A(cust_id, cust_name)
    SELECT cust_id, cust_name
    FROM B;

-- 导出B表的信息到A表
SELECT *
    FROM A
INTO B;