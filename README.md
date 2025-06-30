# Teradata Python example

## Python basics

using venv

```bash
python -m venv venv

# macOS/Linux
source venv/bin/activate

# Windows Cmd
venv\Scripts\activate.bat
```

persist and restore dependencies

```bash
pip freeze > requirements.txt
pip install -r requirements.txt
```

## Teradata

Use free instance of Teradata https://clearscape.teradata.com/dashboard or any
other available.

define .env file in the root of the project with the following variables
pointing to your Teradata instance:

```dotenv
TD_HOST=your_host
TD_USER=your_users
TD_PASSWORD=your_password
```

## The project

dependencies:

- https://pypi.org/project/teradatasql/
- https://pypi.org/project/python-dotenv/
