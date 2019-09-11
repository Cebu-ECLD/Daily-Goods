from flask import Flask
# from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config.from_object('main.config')

# from sqlalchemy import *
# from sqlalchemy.orm import *
# from sqlalchemy.ext.declarative import declarative_base

# dialect = "mysql"
# driver = "mysqldb"
# username = "root"
# password = ""
# host = "127.0.0.1"
# port = "3306"
# database = "rakuten_db"
# charset_type = "utf8"
# db_url = f"{dialect}+{driver}://{username}:{password}@{host}:{port}/{database}?charset={charset_type}"

# # DB接続するためのEngineインスタンス
# ENGINE = create_engine(db_url, echo=True)

import pymysql.cursors

conn = pymysql.connect(host='127.0.0.1',
                    user='root',
                    db='rakuten_db3',
                    charset='utf8mb4',
                    cursorclass=pymysql.cursors.DictCursor)


import main.views