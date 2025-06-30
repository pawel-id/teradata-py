import os
from dotenv import load_dotenv
import teradatasql

# Load environment variables from .env file
load_dotenv()

# Get credentials from environment variables
host = os.getenv('TD_HOST')
user = os.getenv('TD_USER')
password = os.getenv('TD_PASSWORD')

with teradatasql.connect(host=host, user=user, password=password) as con:
    with con.cursor() as cur:
        # This should work on any Teradata instance
        cur.execute("SELECT * FROM DBC.DBCInfo")
        rows = cur.fetchall()
        for row in rows:
            print(row)