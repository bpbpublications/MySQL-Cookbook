-- Create the third flow step stored procedure
DELIMITER $$
CREATE PROCEDURE step3()
BEGIN
  -- Implementation of step 3
  SELECT NOW();
  SELECT 'Step 3 executed.';
END $$
DELIMITER ;  