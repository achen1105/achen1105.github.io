# A very simple Flask Hello World app for you to get started with...

from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET','POST'])
def hello_world():
    #return 'Hello from Flask!'
    if request.method=='POST':
        return 'AAA';
        #age1 = request.form.get('ageName')
        #weight1 = request.form.get('weightName')
       # return redirect(url_for('getBP', age=age1, weight=weight1))

    return render_template('website.html', output = '')

@app.route('/<int:age>/<int:weight>')
def getBP(age, weight):
    bp = age*weight
    return render_template('website.html', output = str(bp))
    #return str(age*weight)


if __name__ == '__main__':
    app.run()