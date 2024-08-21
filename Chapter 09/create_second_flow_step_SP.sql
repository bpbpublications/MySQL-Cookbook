-- Create the second flow step stored procedure
DELIMITER $$
CREATE PROCEDURE step2()
BEGIN
  -- Implementation of step 2
  SELECT NOW();
  SELECT 'Step 2 executed.';
END $$
DELIMITER ;