SELECT rental_date, 
 period_add(concat(year(rental_date), 
 case 
   when month(rental_date) between 1 and 9 then concat('0',month(rental_date)) 
   else month(rental_date) 
 end), 10) as rental_period_add 
from rental; 