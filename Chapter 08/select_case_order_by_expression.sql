select customer_id, last_name, first_name, email,
 case when active = 1 then ‘Active’ else ‘Inactive’ end is_active
from customer order by is_active;  