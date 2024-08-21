SELECT address_id, address, postal_code, phone, 
a.city_id, c.city, co.country_id, co.country
from address a
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country co on c.country_id = co.country_id; 