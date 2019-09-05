from main import app

app.run(host='127.0.0.1', port=5000, debug=True)


# # Routing
# @app.route('/')
# def index():
#     title = "ようこそ"
#     message = "楽天へ"
#     return render_template('./main/templates/index.html',
#                            message=message, title=title)

# @app.route('/result', methods=['POST', 'GET'])
# def post():
#     title = "resut"
#     message = "resultに移動したよ"
    
#     return render_template('templates/result.html',
#                     message=message, title=title)

# @app.route('/page', methods=['POST'])
# def functions():
#     title = "page"
#     message = "pageに移動"

#     return render_template('.main/templates/page.html',
#                             message=message, title=title)

# if __name__ == '__main__':
#     app.debug = True
#     app.run(host='0.0.0.0', port=3000)
