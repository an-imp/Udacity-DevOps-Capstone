#!/usr/bin/env bash
# This file will lint the python files 

python3 -m venv ~/.devops
source ~/.devops/bin/activate
pip install --no-cache-dir --upgrade pip &&\
  pip install --no-cache-dir -r requirements.txt

pylint app.py