-- Create a trigger that keeps OLD row BEFORE delete
DROP TRIGGER del_myorder; -- drop it if exists already
CREATE TRIGGER del_myorder BEFORE DELETE ON myorders
FOR EACH ROW INSERT INTO DEL_MyOrders (OrderID, CustomerID, OrderDate, TotalAmount) 
VALUES (OLD.OrderID, OLD.CustomerID, OLD.OrderDate, OLD.TotalAmount);