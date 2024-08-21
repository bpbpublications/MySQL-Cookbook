-- Insert sample data into the tables
INSERT INTO MyCustomers (CustomerID, CustomerName, City)
VALUES (1, 'John Doe', 'New York'),
       (2, 'Jane Smith', 'London'),
       (3, 'Bob Johnson', 'Paris');

INSERT INTO MyOrders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (1, 1, '2023-06-01', 100.00),
       (2, 2, '2023-06-02', 200.00),
       (3, 1, '2023-06-03', 150.00);

COMMIT; -- commit Insert statements above, ignore if Auto-Commit is enabled