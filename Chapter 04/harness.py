#!/usr/bin/python
# harness.py - test harness for sakila.py library 
import sys 
##import MySQLdb 
import mysql.connector
from elias import sakila 

try:   
	conn = sakila.connect ()   
	print ("Connected") 
except (mysql.connector.errors.Error, TypeError) as e:   
	print ("Cannot connect to server")   
	print ("Error code:", e.args[0])   
	print ("Error message:", e.args[1])  
	raise
# exit and disconnect 		
conn.close () 
print ("Disconnected") 
