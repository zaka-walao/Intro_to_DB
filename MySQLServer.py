import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connection parameters - update these with your server details
        connection = mysql.connector.connect(
            host='your_host',        # typically 'localhost' or an IP address
            user='your_username',    # your MySQL username
            password='your_password' # your MySQL password
        )
        if connection.is_connected():
            cursor = connection.cursor()
            # This statement ensures the database is created if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
        cursor.close()
        connection.close()
    except Error as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    create_database()
