UPDATE customer
SET store_id = 2, address_id = 2, last_update = sysdate()
WHERE customer_id > 601;