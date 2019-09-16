-- Write your MySQL query statement below
-- 1068.产品销售分析I.sql

/*
Sales
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |

Product
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |

查询语句获取产品表 Product 中所有的 产品名称 product name 以及 该产品在 Sales 表中相对应的 上市年份 year 和 价格 price
*/

SELECT Product.product_name, Sales.year, Sales.price
    FROM Product INNER JOIN Sales
    ON Product.product_id = Sales.product_id
