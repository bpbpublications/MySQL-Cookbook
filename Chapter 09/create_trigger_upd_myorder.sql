CREATE TRIGGER upd_myorder BEFORE UPDATE ON myorders
FOR EACH ROW SET @TotalAmount = @TotalAmount + NEW.TotalAmount;