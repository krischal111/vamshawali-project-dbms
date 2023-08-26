import sqlite3 as sql


# I have to connect to a database, and then start using it
connection = sql.connect("Vamshawali_record.db")
print("Opened the database successfully.")
cursor = connection.cursor()
with open("create_table.sql") as file:
    database_script = file.read()
    print("The script is")
    print(database_script)
    cursor.executescript(database_script)
    pass

