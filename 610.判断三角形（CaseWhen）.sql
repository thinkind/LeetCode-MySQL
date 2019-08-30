# Write your MySQL query statement below
-- 610.判断三角形

SELECT x, y, z,(case
                    when abs(x-y)<z and (x+y) > z   -- 判断是否为三角形
                        then'Yes'    
                    else 'No'
                    end
                ) AS triangle
    FROM triangle;