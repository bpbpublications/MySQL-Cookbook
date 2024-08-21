UPDATE events set event_details = JSON_ARRAY_INSERT(event_details, '$.speakers[2]', 'Marijke Frank')
WHERE title = 'Conference';