# Module 5 Project 
This is the Project for Module 5, which aims to integrate Python and SQL using the SQLite database engine while introducing logging, creation and managment of a database, the building a schema, and performing various SQL operations. 

## Project Setup

### Clone project and open project folder in VS Code

```bash
git clone https://github.com/dgraves4/datafun-05-sql
cd "C:\Users\derek\OneDrive\Documents\44608 Data Analytics Fundamentals\Mod 5\Mod 5 Project\datafun-05-sql"
code .

# Add .gitignore file to root project folder
    **Add .vscode/ and .venv/ to .gitignore**

# Create and activate virtual environment

python -m venv .venv
.venv\scripts\activate

# Install dependencies and freeze to requirements.txt

pip install pandas pyarrow
pip freeze > requirements.txt

# Initial Commit
git add .
git commit -m "Initial commit"
git push origin main

