SELECT JSON_EXTRACT(JSON_DOC, '$.contacts') AS contacts
FROM ch13_json 
WHERE JSON_EXTRACT(JSON_DOC, '$.contacts') like '%Elias%';