-- Create the flow controller table
CREATE TABLE IF NOT EXISTS flow_controller (
  id INT PRIMARY KEY AUTO_INCREMENT,
  step_name VARCHAR(50),
  status VARCHAR(20)
);