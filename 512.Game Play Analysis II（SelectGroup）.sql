-- Write your MySQL query statement below
-- 512.Game Play Analysis II（SelectGroup）.sql

/*
Table: Activity
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
Write a SQL query that reports the device that is first logged in for each player.
*/

SELECT player_id, device_id
    FROM Activity
    WHERE (player_id, event_date)
        IN(
            SELECT player_id, min(event_date)
            FROM Activity            
            GROUP BY player_id
        );
        
        
/*
-- 错误示例1
SELECT player_id, device_id
    FROM Activity
    GROUP BY player_id
    HAVING (player_id, event_date) IN (SELECT player_id, min(event_date) FROM Activity GROUP BY player_id)
    -- having子句执行在select 之后,因此having中的字段必须是在select子句中的,event_date没有再select子句里,所以不行
    ORDER BY player_id;
*/

/*
-- 错误示例2
SELECT player_id, device_id                                                  
    FROM (                                                                                
        SELECT player_id, device_id, min(event_date)
        -- 有group by时,select 后面的字段,要么在group by后,要么在聚合函数中,你device_id不在group by 中也不在聚合函数中
            FROM activity 
            GROUP BY player_id
    )AS tmp
*/