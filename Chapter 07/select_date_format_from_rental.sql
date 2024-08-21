SELECT DATE_FORMAT(rental_date, "%W %M %e %Y"), DATE_FORMAT(return_date, "%M %d %Y") 
FROM rental;