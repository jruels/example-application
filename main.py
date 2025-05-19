import os
from flask import Flask
app = Flask(__name__)
version = os.getenv("APP_VERSION", "unknown")


@app.route('/')
def index():
    return f'Hello Argo CD {version}!'

app.run(host='0.0.0.0', port=8080)
