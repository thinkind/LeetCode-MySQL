# Write your MySQL query statement below
-- 1050.合作过至少三次的演员和导演

SELECT actor_id, director_id
    FROM ActorDirector
    GROUP BY actor_id, director_id  -- 留意各个语句的顺序和分组的依据
    HAVING COUNT(*) >= 3;
