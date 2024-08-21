-- Create the table to store deleted Orders
CREATE TABLE DEL_MyOrders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(10, 2)
);