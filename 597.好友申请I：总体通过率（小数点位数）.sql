-- Write your MySQL query statement below
-- 597.好友申请I：总体通过率.sql

SELECT ROUND(IFNULL(                                                                             -- ROUND(number, 2)，保留两位小数，四舍五入
            ( COUNT(DISTINCT requester_id, accepter_id) / COUNT(DISTINCT sender_id, send_to_id) ),  -- 有申请时输出通过率
            0.00                                                                                    -- 没申请时输出0.00
        ),2)
    -- COUNT(DISTINCT requester_id, accepter_id),   -- 监控通过数
    -- COUNT(DISTINCT sender_id, send_to_id),       -- 监控申请数
    AS accept_rate
    FROM friend_request, request_accepted;
    


/*
TRUNCATE(number, 2)，保留两位小数，且不四舍五入
ROUND(number, 2)，保留两位小数，四舍五入
*/