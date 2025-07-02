import os
from dotenv import load_dotenv
import teradatasql

# Load environment variables from .env file
load_dotenv()

# Get credentials from environment variables
host = os.getenv('TD_HOST')
user = os.getenv('TD_USER')
password = os.getenv('TD_PASSWORD')

# Optional connection options
tmode = os.getenv('TD_TMODE', None)
encryptdata = os.getenv('TD_ENCRYPTDATA', None)

connect_args = {
    'host': host,
    'user': user,
    'password': password
}

if tmode:
    connect_args['tmode'] = tmode
if encryptdata:
    connect_args['encryptdata'] = encryptdata

with teradatasql.connect(**connect_args) as con:
    with con.cursor() as cur:
        cur.execute("SELECT * FROM DBC.DBCInfo")
        rows = cur.fetchall()
        for row in rows:
            print(row)
