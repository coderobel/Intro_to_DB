import mysql.connector

try:
    mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "mysql@273111998",
    database = "alx_book_store"
)
except mysql.connector.Error:
    print("Could not connect to database.")
print(mydb.get_server_info())
mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

