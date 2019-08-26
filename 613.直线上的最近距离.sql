# Write your MySQL query statement below
-- 613.直线上的最近距离

SELECT min(abs(p1.x - p2.x)) shortest
FROM point as p1 INNER JOIN point p2    -- 优先使用INNER JOIN而非HAVING
ON p1.x != p2.x;