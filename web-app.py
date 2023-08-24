from flask import Flask, render_template, request
from markupsafe import escape

import sqlite3 as sql
app = Flask(__name__)

name = "<marquee direction = left behavior = scroll> I am distracting you with my movement. </marquee>"
@app.route('/')
def home():
    return f'''
<!doctype html>
<html>
<head>
<title>My website</title>
</head>
<body>
Hi, welcome to my website.
<br>
If I escape, your name inputted was :
 {escape(name)}
 <br>
 <br>
 If I do not escape, you can perform injection as :
 {name}

</body>
</html>
'''

if __name__ == '__main__':
    app.run(debug=True, port=8090, host='0.0.0.0')
    

