#!/bin/bash
source /app/.venv/bin/activate

cd /app/

export FLASK_APP=app.py
export POSTGRESQL_URL=postgresql://worker:worker@localhost/app

flask db upgrade
python3 app.py
