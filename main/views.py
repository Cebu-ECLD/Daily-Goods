from flask import request, redirect, url_for, render_template, flash
from main import app
import requests
import main.__init__ as init


@app.route('/')
def index():
        
    return render_template('index.html')

@app.route('/result', methods=['POST', 'GET'])
def result():
  
    word = request.args.get('search')
    with init.conn.cursor() as cursor:
        sql = "SELECT * FROM product_table WHERE itemName LIKE " + "'%" + word + "%'" + " OR itemCaption LIKE '%" + word + "%'"
        cursor.execute(sql)
        result = cursor.fetchall()

    if(len(result)==0):
        result = ['nothing']

    return render_template('result.html', word = word, result=result)

@app.route('/page', methods=['POST', 'GET'])
def page():

    good_info = request.args.get('good_info')

    with init.conn.cursor() as cursor:
        sql = "SELECT * FROM product_table WHERE item_tag = " + str(good_info) + " ORDER BY itemquantity"
        cursor.execute(sql)
        result = cursor.fetchall()

    return render_template('page.html', good_tag=good_info, good_info=result)


