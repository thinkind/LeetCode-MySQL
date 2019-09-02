-- Write your MySQL query statement below
-- 511. Game Play Analysis I（MinSelect）.sql

/*
Write an SQL query that reports the first login date for each player.
Table: Activity
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int
*/

SELECT player_id, min(event_date) AS first_login   -- id和首次登陆日期
    FROM Activity
    GROUP BY player_id      -- HAVING event_date = min(event_date)可以直接SELECT min
    ORDER BY player_id ASC
