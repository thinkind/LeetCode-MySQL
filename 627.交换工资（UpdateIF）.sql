-- Write your MySQL query statement below
-- 627.交换工资（交换性别）.sql

Update salary 
    SET sex = IF(sex = 'm','f','m');