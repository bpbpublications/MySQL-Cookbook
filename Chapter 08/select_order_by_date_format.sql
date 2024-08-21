SELECT DATE_FORMAT(rental_date, “%W %M %e %Y”) as rental_dt,
DATE_FORMAT(return_date, “%M %d %Y”) as ret_dt
FROM rental order by rental_dt;