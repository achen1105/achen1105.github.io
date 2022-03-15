# Anita Chen achen999, HW2, CSCI 571 Spring 2022
# A very simple Flask Hello World app for you to get started with...

from flask import Flask, render_template, request, redirect, url_for
import pandas as pd
import joblib

app = Flask(__name__)

@app.route('/', methods=['GET','POST'])
def start():
    if request.method=='POST':
        age1 = request.form.get('ageName')
        weight1 = request.form.get('weightName')
        return redirect(url_for('getBP', age=age1, weight=weight1))
    else:
        return render_template('website.html', output = '')

@app.route('/<int:age>/<int:weight>', methods=['GET','POST'])
def getBP(age, weight):
    # entry on old url
    if request.method=='POST':
        age1 = request.form.get('ageName')
        weight1 = request.form.get('weightName')
        return redirect(url_for('getBP', age=age1, weight=weight1))
    # calculate bp
    else:
        clf = joblib.load("regrhw2.pkl")
        #for pythonanywhere: clf = joblib.load("/home/achen1105/mysite/regrhw2.pkl")
        x = pd.DataFrame([[age, weight]], columns=["Age", "Weight"])
        prediction = clf.predict(x)[0]

    return render_template('website.html', output = str(prediction))

if __name__ == '__main__':
    app.run()

