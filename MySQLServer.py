import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "mysql@273111998",
    database = "alx_book_store"
)
print(mydb.get_server_info())
mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE alx_book_store;")

