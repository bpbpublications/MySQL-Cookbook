# This program uses the re module to escape any special characters in the input string using regular expressions. 
# The escape_special_characters function takes in a string as an argument and uses the sub method to replace
# any non-alphanumeric or whitespace characters with a backslash followed by the character. 
# The program then establishes a connection to a MySQL database and creates a cursor object to execute the query. 
# The input string is passed through the escape_special_characters function and the escaped string is used in the query to insert the data into the table. 
# The changes are then committed to the database and the connection is closed.

import re
import mysql.connector
from elias import sakila 

def escape_special_characters(string):
    return re.sub(r'[^\w\s]', '\\\g<0>', string)

cnx = sakila.connect()
cursor = cnx.cursor()

input_string = "This string has special characters like !@#%^&*"
escaped_string = escape_special_characters(input_string)

query = "INSERT INTO my_output (output) VALUES ('{}')".format(escaped_string)
cursor.execute(query)
cnx.commit()

cursor.close()
cnx.close()
