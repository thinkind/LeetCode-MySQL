-- MySQL
-- 584.寻找用户推荐人.sql

SELECT name
    FROM customer
    WHERE referee_id != '2'
        OR referee_id IS NULL;  -- 这个场景中NULL是合法的