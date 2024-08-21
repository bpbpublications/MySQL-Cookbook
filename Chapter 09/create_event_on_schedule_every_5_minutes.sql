CREATE EVENT myevent
    ON SCHEDULE EVERY 5 MINUTE
    DO
      UPDATE mytable SET mycol = mycol + 1;
	  
SELECT * from mytable; 