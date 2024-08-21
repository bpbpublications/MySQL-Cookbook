SELECT film_id, title, description, release_year, rental_duration
FROM film flm
WHERE flm.description != ALL
(SELECT ftxt.description 
FROM film_text ftxt 
WHERE flm.film_id = ftxt.film_id); 