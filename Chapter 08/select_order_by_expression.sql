select length(last_name) as len_lastname, last_name, first_name 
from customer order by len_lastname, last_name;