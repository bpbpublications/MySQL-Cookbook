DELIMITER $$
USE sakila $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Actor_Films_ByCategory`(IN ActorId INT, IN CategoryId INT)
BEGIN
 SELECT a.first_name, a.last_name, f.title, f.description, f.release_year, c.name 'category'
 FROM actor a, film f, film_actor fa, film_category fc, category c
 WHERE fa.actor_id = ActorId
 AND fc.category_id = CategoryId
 AND fa.film_id = f.film_id
 AND fa.actor_id = a.actor_id
 AND fc.film_id = f.film_id
 AND c.category_id = fc.category_id
END$$