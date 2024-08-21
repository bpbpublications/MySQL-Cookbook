DELIMITER //
CREATE FUNCTION CalculateTotalPrice(quantity INT, price DECIMAL(10,2)) RETURNS DECIMAL(10,2)
	NO SQL
BEGIN
  DECLARE total DECIMAL(10,2);
  SET total = quantity * price;
  RETURN total;
END //
DELIMITER ;