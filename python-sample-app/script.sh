#!/bin/bash

cd /vagrant/

export FLASK_APP=app.py
export POSTGRESQL_URL=postgresql://worker:worker@localhost/app

flask db upgrade
python3 app.py
