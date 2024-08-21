SELECT address_id, address, city_id, postal_code, phone,
CASE 
  WHEN city_id <= 100 THEN 'City Id is less than or equal to 100'
  WHEN city_id > 100 THEN 'City Id is greater than 100'
  ELSE 'City Id is Empty or Invalid'
END AS City_ID_Text  
from address;