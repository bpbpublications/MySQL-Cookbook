SELECT rental_duration, POWER(rental_duration, 2), SQRT(rental_duration), ROUND(SQRT(rental_duration)), 
TRUNCATE(SQRT(rental_duration),2)
FROM film;