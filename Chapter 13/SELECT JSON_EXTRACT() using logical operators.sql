SELECT 
CASE 
 WHEN JSON_EXTRACT(json_doc, '$.contacts[0]."firstName"') >= JSON_EXTRACT(json_doc, '$.contacts[1]."firstName"')
 THEN concat(JSON_EXTRACT(json_doc, '$.contacts[0]."firstName"'), ' is Greater than or Equal to ', 
 JSON_EXTRACT(json_doc, '$.contacts[1]."firstName"'))
 ELSE concat(JSON_EXTRACT(json_doc, '$.contacts[1]."firstName"'), ' is Greater or Equal')
END con_fstName
FROM ch13_json;