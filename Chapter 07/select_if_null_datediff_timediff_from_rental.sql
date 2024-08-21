select rental_id, rental_date, ifnull(return_date,'Not returned'),
datediff(return_date, rental_date), timediff(return_date, rental_date)
from rental;