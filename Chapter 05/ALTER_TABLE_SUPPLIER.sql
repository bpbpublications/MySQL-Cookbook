ALTER TABLE supplier modify first_name varchar(100) NOT NULL;
ALTER TABLE supplier ADD address_id smallint;
ALTER TABLE supplier DROP address_id;
ALTER TABLE supplier RENAME column email to e_mail;
