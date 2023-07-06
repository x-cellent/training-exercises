from flask import Flask, Response, request
import requests
import redis
import html
import hashlib

app = Flask(__name__)
default_name = 'identicon String'
salt = "unique salt"
cache = redis.StrictRedis(host='redis', port=6379, db=0)


@app.route('/', methods=['GET', 'POST'])
def mainpage():
    name = default_name
    if request.method == 'POST':
        # Escape user input in order to prevent us from XSS
        name = html.escape(request.form['name'], quote=True)
    salted_name = salt + name
    hashed_name = hashlib.sha256(salted_name.encode()).hexdigest()
    return '''
<html>
    <head>
        <title>identicon</title>
    </head>
    <body>
        <form method="POST">
            Show identicon of <input type="text" name="name" value="{0}">
                              <input type="submit" value="submit">
        </form>
        <p>Your identicon looks like a monster: <img src="/monster/{1}"/>
    </body>
</html>
'''.format(name, hashed_name)


@app.route('/monster/<name>')
def get_identicon(name):
    image = cache.get(name)
    if image is None:
        print('identicon of %s not cached' % name, flush=True)
        response = requests.get('http://dnmonster:8080/monster/' + name + '?size=80')
        image = response.content
        cache.set(name, image)
    return Response(image, mimetype='image/png')


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
