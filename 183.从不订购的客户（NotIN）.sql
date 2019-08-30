-- MySQL
-- 183.从不订购的客户

SELECT Name AS Customers
    FROM Customers
    WHERE Id NOT IN (SELECT CustomerId from Orders)；