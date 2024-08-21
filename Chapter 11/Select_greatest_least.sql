SELECT film_id, rental_duration, length,
greatest(rental_duration, length), least(rental_duration, length) 
FROM film;