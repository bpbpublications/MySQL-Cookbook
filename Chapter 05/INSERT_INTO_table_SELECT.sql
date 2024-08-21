INSERT INTO customer (active, address_id, create_date, first_name, last_name, store_id)
SELECT 0, 1, sysdate(), first_name, last_name, 1
FROM actor
WHERE actor_id >= 100; 