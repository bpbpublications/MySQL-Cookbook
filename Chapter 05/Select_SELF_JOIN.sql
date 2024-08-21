SELECT c1.first_name fname1, c1.last_name lname1,
c2.first_name fname2, c2.last_name lname2, c1.store_id
FROM customer c1, customer c2
WHERE c1.customer_id <> c2.customer_id  
AND c1.store_id = c2.store_id
ORDER BY c1.store_id; 