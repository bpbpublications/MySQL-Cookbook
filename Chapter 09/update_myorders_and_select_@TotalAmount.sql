SET @TotalAmount = 0;
UPDATE myorders SET TotalAmount = 50 where OrderID = 6;
UPDATE myorders SET TotalAmount = 100 where OrderID = 6;
SELECT @TotalAmount AS 'Total Amount';