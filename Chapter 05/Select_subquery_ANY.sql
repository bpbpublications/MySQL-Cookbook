SELECT * FROM film
WHERE language_id = ANY
  (SELECT language_id
  FROM sakila.language la
  WHERE la.name <> 'English'); 