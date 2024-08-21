SELECT cu.customer_id, cu.email, cu.first_name, cu.last_name
from customer cu
WHERE EXISTS (SELECT 0 FROM address a WHERE a.address_id = cu.address_id);