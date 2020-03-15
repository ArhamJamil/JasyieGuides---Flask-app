from flask import  Flask, render_template
from flask_sqlalchemy import SQLAlchemy, request
from datetime import datetime
import json
from flask_mail import Mail



with open('config.json', 'r') as loadjson:
    paramsjson = json.load(loadjson)['paramsjson']


local_server=True
app = Flask(__name__)
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = "465",
    MAIL_USE_SSL = True ,
    MAIL_USERNAME = paramsjson['gmail_user'],
    MAIL_PASSWORD = paramsjson['gmail_password']

)
mail = Mail(app)
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = paramsjson['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = paramsjson['production_uri']
db = SQLAlchemy(app)


class Posts(db.Model):
    srno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(50), nullable=False)
    phoneno = db.Column(db.String(20), nullable=False)
    messages = db.Column(db.String(2000), nullable=False)
    date = db.Column(db.String(6))


@app.route("/", methods = ['GET', 'POST'])
def index():
    if (request.method=='POST'):
        '''Add entry to the databse'''
        name = request.form.get('name')
        email = request.form.get('email')
        phoneno = request.form.get('phoneno')
        messages = request.form.get('messages')

        entry = Posts(name=name, phoneno=phoneno, messages=messages, email=email, date=datetime.now())
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from Rocky Arham Guide :' + name, sender="email",
                          recipients = [paramsjson['gmail_user']],
                          body=messages + "\n" + phoneno
                          )


    return render_template('index.html', paramsjson=paramsjson)

@app.route("/login")
def login():






    return render_template('login.html')

@app.route("/register")
def register():
    return render_template('login1.html')



#app will run by this command
app.run(debug=True)
