SELECT a.address_id, a.address, a.district, a.postal_code, a.phone, st.* 
FROM address a
RIGHT OUTER JOIN store st on a.address_id = st.address_id;