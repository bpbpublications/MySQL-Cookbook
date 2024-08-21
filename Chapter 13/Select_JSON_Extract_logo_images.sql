SELECT JSON_EXTRACT(web_conf_doc, '$.logo') AS logo,
JSON_EXTRACT(web_conf_doc, '$.homepage.carouselImages') AS Images  
FROM ch13_website_config_json
WHERE JSON_EXTRACT(web_conf_doc, '$.homepage.carouselImages') like '%.jpg%';