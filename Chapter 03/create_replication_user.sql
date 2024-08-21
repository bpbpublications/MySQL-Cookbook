CREATE USER 'srv-replica'@'%' IDENTIFIED BY '********';
GRANT REPLICATION SLAVE ON *.* TO 'srv-replica'@'%';