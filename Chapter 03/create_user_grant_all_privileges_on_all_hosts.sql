create user ‘elias’@’%’ identified by ‘<password>’;
grant all privileges on *.* to ‘elias’ with grant option;
select host from mysql.user where user = ‘root’;
select host from mysql.user where user='elias';