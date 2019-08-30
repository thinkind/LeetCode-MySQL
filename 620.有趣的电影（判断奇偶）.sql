-- MySQL
-- 620.有趣的电影.sql

SELECT id, movie, description, rating
    FROM cinema
    WHERE description != 'boring'
         AND (id%2 > 0)         -- 仅选择奇数
    ORDER BY rating DESC；        -- 根据评分降序