from flask import Flask, request, render_template, redirect
import string, random

app = Flask(__name__)

url_db = {} # stores the links short to long

def generate_short_id(length=6):
    characters = string.ascii_letters + string.digits
    return ''.join(random.choices(characters, k=length))


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        url = request.form['url']
        short_id = generate_short_id()
        url_db[short_id] = url
        return render_template('result.html', short_id=short_id)


    return render_template('index.html')

# redirect route: it takes the short id and redirects
@app.route('/<short_id>')
def redirect_to_url(short_id):
    original_url = url_db.get(short_id)
    if original_url:
        return redirect(original_url)
    return 'Invalid short ID!', 404

if __name__ == '__main__':
    app.run(debug=True)
