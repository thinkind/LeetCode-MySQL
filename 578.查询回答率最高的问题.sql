-- Write your MySQL query statement below
-- 578.查询回答率最高的问题.sql
-- 特别注释，经评论区提醒，题目表述有问题：实际上是查询【回答数】最高的问题

SELECT question_id AS survey_log
FROM survey_log
GROUP BY question_id
-- HAVING action = 'answer'
ORDER BY COUNT(answer_id) DESC
LIMIT 1