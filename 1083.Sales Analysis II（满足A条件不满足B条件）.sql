-- Write your MySQL query statement below
-- 1083.Sales Analysis II.sql


SELECT DISTINCT buyer_id
    FROM Sales
    WHERE buyer_id IN (SELECT Sales.buyer_id
                        FROM Sales INNER JOIN Product
                        ON Sales.product_id = Product.Product_id
                        WHERE Product.product_name = 'S8')
        AND buyer_id NOT IN (SELECT Sales.buyer_id
                            FROM Sales INNER JOIN Product
                            ON Sales.product_id = Product.Product_id
                            WHERE Product.product_name = 'iPhone')  -- 不能是IN和!=搭配，否则会扩大范围
    ORDER BY buyer_id;