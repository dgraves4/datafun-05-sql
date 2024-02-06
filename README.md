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
### Initial Commit to Github

```bash
git add .
git commit -m "Initial commit"
git push origin main
```
