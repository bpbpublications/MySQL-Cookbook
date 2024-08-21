-- Create the main flow controller stored procedure
DELIMITER $$
CREATE PROCEDURE main_flow_controller()
BEGIN
  -- Start step 1
  CALL step1();
  -- Update the flow controller table
  INSERT INTO flow_controller (step_name, status) VALUES ('Step 1', 'Completed');
  
  -- Start step 2
  CALL step2();
  -- Update the flow controller table
  INSERT INTO flow_controller (step_name, status) VALUES ('Step 2', 'Completed');
  
  -- Start step 3
  CALL step3();
  -- Update the flow controller table
  INSERT INTO flow_controller (step_name, status) VALUES ('Step 3', 'Completed');
END $$
DELIMITER ;