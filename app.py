#Program app.py is written in Python. It will desplay on a browser "Hola  MediaMarkt Let's GO Hack participantes !!! Greating from Varsovia!!! Capital de Polonia"

import os

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_mediamarkt()
        target = os.environ.get(TARGET, 'Hola  MediaMarkt Let's GO Hack participantes !!! Greating from Varsovia!!! Capital de Polonia')
        return 'Hello()\n'.format(target)

if__name__== "__main__":
        app.run(debug=True,host='0.0.0.0',port=int(os.environ.get('PORT', 8080)))