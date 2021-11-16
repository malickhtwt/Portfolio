from flask import Blueprint, render_template, redirect, url_for

page = Blueprint('page', __name__, template_folder='templates')


@page.route('/', methods=['GET','POST'])
def home():
    return render_template('page/home.html')

@page.route('/contact', methods=['GET','POST'])
def contact():
    return render_template('page/contact.html')