# Module 5 Project 
This is the Project for Module 5, which aims to integrate Python and SQL using the SQLite database engine while introducing logging, creation and managment of a database, the building a schema, and performing various SQL operations. 

## Project Setup
Project setup consists of beginning a git repository with a README.md, cloning the project down to the root project folder, adding necesssary files and depenency installs, and performing initial commits to Github. 

### Clone project and open project folder in VS Code
```bash
git clone https://github.com/dgraves4/datafun-05-sql
cd "C:\Users\derek\OneDrive\Documents\44608 Data Analytics Fundamentals\Mod 5\Mod 5 Project\datafun-05-sql"
code .
```
### Create and add .gitignore file to root project folder
Add .vscode/ and .venv/ to .gitignore folder.

### Create and activate virtual environment
```bash
python -m venv .venv
.venv\scripts\activate #windows
```
### Install dependencies and freeze to requirements.txt

```bash
pip install pandas pyarrow
pip freeze > requirements.txt
```
### Initial and Subsequent Commits to Github

```bash
git add .
git commit -m "Initial commit"
git push origin main
```

## Database Schema

The database schema consists of two created tables: `directors` and `movies`, with primary key as director_id. 

### Directors Table

| Column       | Type    | Description          |
|--------------|---------|----------------------|
| director_id  | TEXT    | Unique director ID   |
| first_name   | TEXT    | Director's first name|
| last_name    | TEXT    | Director's last name |
| year_born    | INTEGER | Year of birth        |

### Movies Table

| Column       | Type    | Description          |
|--------------|---------|----------------------|
| movie_id     | INTEGER | Unique movie ID      |
| movie_title  | TEXT    | Title of the movie   |
| director_id  | TEXT    | ID of the director   |
| release_year | INTEGER | Year of release      |
| genre        | TEXT    | Movie genre          |

## Contributing

We welcome contributions to this project. If you have suggestions to improve the project or encounter issues, please open an issue or submit a pull request.

## References & Acknowledgments

Special thanks to OpenAI for assistance with troubleshooting and script debugging as well as schema design. Additional references used for this project include:

- [Specification for Project 5 SQL Module](https://github.com/denisecase/datafun-05-spec)
