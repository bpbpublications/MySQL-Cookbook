SELECT first_name, last_name 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.csv'
FIELDS TERMINATED BY ',' 
FROM customer;