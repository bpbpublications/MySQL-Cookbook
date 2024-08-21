-- Create the first flow step stored procedure
DELIMITER $$
CREATE PROCEDURE step1()
BEGIN
  -- Implementation of step 1
  SELECT NOW();
  SELECT 'Step 1 executed.';
END $$
DELIMITER ;