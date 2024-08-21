SELECT web_conf_doc->'$.logo' AS logo,
web_conf_doc->'$.homepage' AS homepage  
FROM ch13_website_config_json; 