CREATE OR REPLACE VIEW `customer_address_view` AS 
SELECT cu.first_name, cu.last_name, cu.email, cu.active,
adr.address, adr.postal_code, city.city
FROM customer cu INNER JOIN address adr on adr.address_id = cu.address_id
INNER JOIN city on city.city_id = adr.city_id;