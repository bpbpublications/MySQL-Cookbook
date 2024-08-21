SELECT rental_date, dayname(rental_date), 
dayofmonth(rental_date), dayofweek(rental_date), dayofyear(rental_date) 
from rental;