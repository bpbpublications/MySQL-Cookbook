SELECT
 address,
 city_id,
 ROW_NUMBER() OVER w AS 'row_number',
 RANK()       OVER w AS 'rank',
 DENSE_RANK() OVER w AS 'dense_rank'
FROM address
WINDOW w AS (ORDER BY city_id);