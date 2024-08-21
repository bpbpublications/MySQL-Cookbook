SELECT * FROM actor a
WHERE actor_id IN (SELECT fa.actor_id FROM film_actor fa)
AND actor_id > 10;