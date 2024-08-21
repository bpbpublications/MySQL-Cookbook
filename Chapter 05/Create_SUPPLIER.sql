CREATE TABLE supplier (
  supplier_id smallint unsigned NOT NULL AUTO_INCREMENT,
  first_name varchar(50) NOT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(50) NULL,
  is_active tinyint NOT NULL DEFAULT '1',
  create_date datetime NOT NULL,
  last_update timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (supplier_id)
);  