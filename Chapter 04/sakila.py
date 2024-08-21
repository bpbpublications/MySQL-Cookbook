# sakila.py - library file with utility method for connecting to MySQL # via MySQLdb module 
##import MySQLdb 
import mysql.connector

host_name = "localhost" 
db_name = "sakila" 
user_name = "root" 
password = "Hl1as!@#$%^&*()" 
# Establish a connection to the sakila database, returning a connection # object.  Raise an exception if the connection cannot be established. 

def connect ():   return mysql.connector.connect (
db = db_name,                           
host = host_name,                           
user = user_name,                           
passwd = password
)
