from flask import request, redirect, url_for, render_template, flash
from main import app
import requests
import pandas as pd
#from flaskr.models import Entry

@app.route('/')
def index():
    title = "ようこそ"
    message = "楽天へ"
    return render_template('index.html',
                           message=message, title=title)

@app.route('/result', methods=['POST', 'GET'])
def result():
    title = "resut"
    message = "resultに移動したよ"
    word = request.args.get('search')
    item_url = 'https://app.rakuten.co.jp/services/api/IchibaItem/Search/20170706'
    item_parameters = {
                 'applicationId': 1034112430128448197,
                'shopcode' : 'rf222101-fuji',
                'format': 'json',
                'formatVersion': 2,
                'genreId': 0,
                'keyword': word,
                'shopName': '楽天24',
                 'hits': 5,
    }
    r = requests.get(item_url, params=item_parameters)
    item_data = r.json()

    return render_template('result.html',
                    message=message, title=title, word = word, item_data=item_data)

@app.route('/page', methods=['POST', 'GET'])
def page():
    title = "page"
    message = "pageに移動したよ"
    
    return render_template('page.html',
                    message=message, title=title)

