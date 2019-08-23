-- MySQL
-- 596.超过5名学生的课

SELECT class
    FROM courses
    GROUP BY class
    HAVING count(DISTINCT student) >= 5；
