"""
main module
"""
import logging
from flask import Flask, render_template
from flask.logging import create_logger

app = Flask(__name__)
LOG = create_logger(app)
LOG.setLevel(logging.INFO)

@app.route('/')
def index():
    """Main index"""
    here = "here"
    LOG.info('%s', here)
    return render_template('green.html')
