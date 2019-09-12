from flask import Flask
import pymysql.cursors
# from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config.from_object('main.config')

conn = pymysql.connect(host='127.0.0.1',
                    user='root',
                    db='rakuten_db',
                    charset='utf8mb4',
                    cursorclass=pymysql.cursors.DictCursor)


import main.views