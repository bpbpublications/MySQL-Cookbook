-- Create the updatable view
CREATE OR REPLACE VIEW CustomerOrders AS
SELECT MyCustomers.CustomerID, MyCustomers.CustomerName, MyOrders.OrderID, MyOrders.OrderDate, MyOrders.TotalAmount
FROM MyCustomers
JOIN MyOrders ON MyCustomers.CustomerID = MyOrders.CustomerID;