CREATE USER 'elias' IDENTIFIED BY '**********'; -- choose your own user and password
CREATE ROLE 'end_user';
GRANT SELECT on newschema.* to 'end_user'; 
GRANT 'end_user' to 'elias';
ALTER USER 'elias' WITH MAX_QUERIES_PER_HOUR 90;