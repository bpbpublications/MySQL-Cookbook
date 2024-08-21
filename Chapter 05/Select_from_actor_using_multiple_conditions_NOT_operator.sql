SELECT actor_id, first_name, last_name, last_update from actor 
where last_name > 'DAVIS'
and NOT (first_name = 'BETTE');