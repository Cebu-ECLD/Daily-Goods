from flask import request, redirect, url_for, render_template, flash
from main import app
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
    
    return render_template('result.html',
                    message=message, title=title)

@app.route('/page', methods=['POST', 'GET'])
def page():
    title = "page"
    message = "pageに移動したよ"
    
    return render_template('page.html',
                    message=message, title=title)

