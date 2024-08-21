SELECT sum(amount) FROM payment 
GROUP BY customer_id, staff_id 
HAVING sum(amount) > 30;