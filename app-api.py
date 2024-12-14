# flask-app.py
from flask import Flask, request
import json

app = Flask(__name__)

description =   """
                <!DOCTYPE html>
                <head>
                <title>API Landing</title>
                </head>
                <body>  
                    <h3>A simple API using Flask</h3>
                </body>
                """

@app.route('/api', methods=['GET'])
def helloWorld():
    return description

if __name__ == "__main__":
	app.run(host='0.0.0.0', port=8080)