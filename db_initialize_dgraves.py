import sqlite3
import pandas as pd
import pathlib
import logging

# Logging Configuration - Configure logging to write to a file named log.txt
logging.basicConfig(filename='log.txt', level=logging.DEBUG, filemode='a', format='%(asctime)s - %(levelname)s - %(message)s')

# Define the path to the SQLite database file
db_file = "C:/Users/derek/OneDrive/Documents/44608 Data Analytics Fundamentals/Mod 5/Mod 5 Project/datafun-05-sql/project.db"

# Define the directory containing SQL files
sql_dir = pathlib.Path("C:/Users/derek/OneDrive/Documents/44608 Data Analytics Fundamentals/Mod 5/Mod 5 Project/datafun-05-sql/sql")

def create_database():
    """Function to create a database. Connecting for the first time
    will create a new database file if it doesn't exist yet.
    Close the connection after creating the database
    to avoid locking the file."""
    try:
        conn = sqlite3.connect(db_file)
        conn.close()
        logging.info("Database created successfully.")
    except sqlite3.Error as e:
        logging.exception("Error creating the database:")

def create_tables():
    """Function to read and execute SQL statements to create tables"""
    try:
        with sqlite3.connect(db_file) as conn:
            sql_file = sql_dir / "create_tables.sql"
            with open(sql_file, "r") as file:
                sql_script = file.read()
            conn.executescript(sql_script)
            logging.info("Tables created successfully.")
    except sqlite3.Error as e:
        logging.exception("Error creating tables:")

def insert_data_from_csv():
    """Function to use pandas to read data from CSV files (in 'data' folder)
    and insert the records into their respective tables."""
    try:
        director_data_path = pathlib.Path("C:/Users/derek/OneDrive/Documents/44608 Data Analytics Fundamentals/Mod 5/Mod 5 Project/datafun-05-sql/data/directors.csv")
        movie_data_path = pathlib.Path("C:/Users/derek/OneDrive/Documents/44608 Data Analytics Fundamentals/Mod 5/Mod 5 Project/datafun-05-sql/data/movies.csv")
        directors_df = pd.read_csv(director_data_path)
        movies_df = pd.read_csv(movie_data_path)
        with sqlite3.connect(db_file) as conn:
            # use the pandas DataFrame to_sql() method to insert data
            # pass in the table name and the connection
            directors_df.to_sql("directors", conn, if_exists="replace", index=False)
            movies_df.to_sql("movies", conn, if_exists="replace", index=False)
            logging.info("Data inserted successfully.")
    except (sqlite3.Error, pd.errors.EmptyDataError, FileNotFoundError) as e:
        logging.exception("Error inserting data:")

def execute_sql_from_file(db_filepath, sql_file, result_file=None):
    """Function to use Python to interact with the SQL database and execute SQL commands."""
    with sqlite3.connect(db_filepath) as conn:
        with open(sql_file, 'r') as file:
            sql_script = file.read()
        cursor = conn.cursor()
        cursor.executescript(sql_script)
        logging.info(f"Executed SQL from {sql_file}")

        # Fetch the results if any
        results = cursor.fetchall()

        # If result_file is provided, save the results to a CSV file
        if result_file and results:
            df = pd.DataFrame(results)
            df.to_csv(result_file, index=False)
            logging.info(f"Saved results to {result_file}")

        return results

def main():
    """Main function to execute SQL Module"""
    create_database()
    create_tables()
    insert_data_from_csv()

    # Execute SQL operations and save results to CSV files
    execute_sql_from_file(db_file, sql_dir / 'insert_records.sql')
    execute_sql_from_file(db_file, sql_dir / 'update_records.sql')
    execute_sql_from_file(db_file, sql_dir / 'delete_records.sql')
    execute_sql_from_file(db_file, sql_dir / 'query_aggregation.sql')
    execute_sql_from_file(db_file, sql_dir / 'query_filter.sql')
    execute_sql_from_file(db_file, sql_dir / 'query_sorting.sql')
    execute_sql_from_file(db_file, sql_dir / 'query_group_by.sql')
    execute_sql_from_file(db_file, sql_dir / 'query_join.sql')

    logging.info("All SQL operations completed successfully")

if __name__ == "__main__":
    main()









