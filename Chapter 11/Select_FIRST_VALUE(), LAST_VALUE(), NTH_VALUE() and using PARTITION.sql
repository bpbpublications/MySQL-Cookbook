SELECT
	 customer_id, date(payment_date), amount,
	 FIRST_VALUE(amount)  OVER w AS 'first',
	 LAST_VALUE(amount)   OVER w AS 'last',
	 NTH_VALUE(amount, 2) OVER w AS 'second',
	 NTH_VALUE(amount, 4) OVER w AS 'fourth'
FROM payment
WINDOW w AS (PARTITION BY customer_id ORDER BY date(payment_date)
                    ROWS UNBOUNDED PRECEDING);