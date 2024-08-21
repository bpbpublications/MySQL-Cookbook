select payment_id, payment_date,
case
when adddate(payment_date, interval 18 year) <= current_date()
then adddate(payment_date, interval 18 year)
else current_date()
end new_payment_date0
from payment;