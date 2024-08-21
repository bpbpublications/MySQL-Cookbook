SELECT web_conf_doc->>'$.logo' AS logo, count(WEB_CONF_DOC)
FROM ch13_website_config_json;