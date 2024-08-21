select * from customer cu, address ad
where cu.address_id = ad.address_id 
order by cu.last_name, ad.address_id;