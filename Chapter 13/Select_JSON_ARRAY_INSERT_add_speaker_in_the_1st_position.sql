SELECT JSON_ARRAY_INSERT(event_details, '$.speakers[0]', 'Alice Wonder')
FROM events
WHERE id=1;