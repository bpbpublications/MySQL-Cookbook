SELECT payment_date, cu.last_name, cu.first_name,
min(amount), max(amount), avg(amount) 
FROM payment 
JOIN customer cu on cu.customer_id = payment.customer_id
GROUP BY payment_date, cu.last_name, cu.first_name;