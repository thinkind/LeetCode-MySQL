-- MySQL

UPDATE Customers                            -- UPDATE和DELETE都检查：是否有WHERE；使用前先用SELECT测试
    SET cust_email = 'James.vc@outlook.com'
    WHERE cust_id = '024';
