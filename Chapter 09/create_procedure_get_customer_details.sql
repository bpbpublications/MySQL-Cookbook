CREATE PROCEDURE Get_Customer_Details(IN customerId INT)
BEGIN
SELECT * FROM customer WHERE customer_id = customerId;
END