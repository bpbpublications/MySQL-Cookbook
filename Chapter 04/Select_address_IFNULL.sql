SELECT address_id, ifnull(address2,'NULL address2'), ifnull(postal_code, 'NULL postal_code'), ifnull(phone, 'NULL phone')
FROM sakila.address;
