-- MySQL
--  603.连续空余座位.sql

SELECT DISTINCT C1.seat_id
    FROM cinema AS C1 INNER JOIN cinema AS C2
    ON (C1.seat_id = C2.seat_id + 1)    -- C1和C2作为相连
        OR (C1.seat_id = C2.seat_id -1)
    WHERE C1.free = '1'                 -- C1和C2都是空座
        AND C2.free = '1'
    ORDER BY C1.seat_id;                -- 输出的空余座位号从小到大排序