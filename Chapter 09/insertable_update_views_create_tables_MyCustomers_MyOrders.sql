-- Create the tables
CREATE TABLE MyCustomers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(50),
  City VARCHAR(50)
);

CREATE TABLE MyOrders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(10, 2),
  FOREIGN KEY (CustomerID) REFERENCES MyCustomers(CustomerID)
);