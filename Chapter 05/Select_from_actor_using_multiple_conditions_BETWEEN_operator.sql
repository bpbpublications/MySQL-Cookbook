SELECT actor_id, first_name, last_name, last_update from actor 
where (actor_id between 10 and 30)
or (last_name BETWEEN 'A' and 'C');