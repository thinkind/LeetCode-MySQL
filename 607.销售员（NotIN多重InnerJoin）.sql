-- Write your MySQL query statement below
-- 607.销售员.sql

/*
salesperson 销售员编号 sales_id 和他的名字 name 。
company 公司编号 com_id 和它的名字 name 
orders 销售员编号 sales_id 和公司编号 com_id
输出所有表 salesperson 中，没有向公司 'RED' 销售任何东西的销售员
*/


SELECT salesperson.name
    FROM salesperson
    WHERE name NOT IN
        (SELECT salesperson.name
            FROM orders
                INNER JOIN salesperson
                    ON salesperson.sales_id = orders.sales_id
                INNER JOIN company
                    ON orders.com_id = company.com_id
            WHERE company.name = 'RED'
        )