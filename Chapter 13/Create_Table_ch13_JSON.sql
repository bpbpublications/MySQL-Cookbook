CREATE TABLE ch13_JSON (
JSON_ID mediumint AUTO_INCREMENT,
JSON_DOC JSON,
PRIMARY KEY (JSON_ID)
);

INSERT INTO ch13_JSON VALUES (null,
'{
"contacts":[
  {"firstName":"Elias", "lastName":"Negrin"},
  {"firstName":"Anna", "lastName":"Negrin"},
  {"firstName":"Aris", "lastName":"Negrin"}
]
}');