SELECT flm.title, flm.description, flm_t.title, flm_t.description,
flm.title = flm_t.title, flm.description = flm_t.description,
CAST(flm.title = flm_t.title AS BINARY), CAST(flm.description = flm_t.description AS BINARY)   
FROM sakila.film flm, sakila.film_text flm_t
WHERE flm.film_id = flm_t.film_id;