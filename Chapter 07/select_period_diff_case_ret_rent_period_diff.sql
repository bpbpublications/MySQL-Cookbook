select rental_date, return_date,
 period_diff(concat(year(return_date), 
 case 
  when month(return_date) between 1 and 9 then concat('0',month(return_date)) 
 else month(return_date)
 end),
concat(year(rental_date),
 case 
  when month(rental_date) between 1 and 9 then concat('0',month(rental_date)) 
  else month(rental_date)
 end)) as ret_rent_period_diff
from rental;