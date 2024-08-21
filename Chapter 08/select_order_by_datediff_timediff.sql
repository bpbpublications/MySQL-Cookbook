select rental_id, rental_date, return_date,
datediff(return_date, rental_date) as rental_return_datediff, 
timediff(return_date, rental_date) as rental_return_timediff
from rental
where return_date is not null
order by rental_return_datediff, rental_return_timediff;