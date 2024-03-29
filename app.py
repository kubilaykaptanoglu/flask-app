from flask import Flask, request, jsonify


app = Flask(__name__)

@app.route('/')
def index():
    return "Kubilay Kaptanoğlu"
@app.route('/healthz')
def healthz():
    return jsonify({'result': '200'})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)