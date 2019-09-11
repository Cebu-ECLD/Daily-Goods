from flask import request, redirect, url_for, render_template, flash
from main import app
import requests
import main.__init__ as init
#from flaskr.models import Entry

@app.route('/')
def index():
    title = "ようこそ" 
    message = "楽天へ"

    # with init.conn.cursor() as cursor:
    #     sql = "SELECT * FROM product_table"
    #     cursor.execute(sql)
    #     result = cursor.fetchall()
        

    return render_template('index.html',
                           message=message, title=title, result=result)

@app.route('/result', methods=['POST', 'GET'])
def result():
    title = "resut"
    message = "resultに移動したよ"
    # API使う場合
    # word = request.args.get('search')
    # item_url = 'https://app.rakuten.co.jp/services/api/IchibaItem/Search/20170706'
    # item_parameters = {
    #              'applicationId': 1034112430128448197,
    #             'shopcode' : 'rf222101-fuji',
    #             'format': 'json',
    #             'formatVersion': 2,
    #             'genreId': 0,
    #             'keyword': word,
    #             'shopName': '楽天24',
    #              'hits': 5,
    # }
    # r = requests.get(item_url, params=item_parameters)
    # item_data = r.json()

    #db使う場合(固定してるからここ変更する)
    word = request.args.get('search')
    with init.conn.cursor() as cursor:
        sql = "SELECT * FROM product_table"
        cursor.execute(sql)
        result = cursor.fetchall()

    return render_template('result.html',
                    message=message, title=title, word = word, result=result)

@app.route('/page', methods=['POST', 'GET'])
def page():
    title = "page"
    message = "pageに移動したよ"
    good_info = request.args.get('good_info')

    return render_template('page.html',
                    message=message, title=title, good_info=good_info)

