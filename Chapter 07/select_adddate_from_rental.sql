SELECT rental_id, rental_date, ADDDATE(rental_date, INTERVAL 7 DAY) from rental
where return_date is null;