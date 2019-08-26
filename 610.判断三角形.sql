# Write your MySQL query statement below
-- 610.判断三角形

SELECT x, y, z,
    (case
     when abs(x-y)<z and (x+y) > z then'Yes'    -- 判断是否为三角形
     else 'No'
     end) as triangle
from triangle;