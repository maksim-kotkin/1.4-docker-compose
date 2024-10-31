#!/bin/sh

python manage.py migrate
python manage.py collectstatic --noinput
gunicorn main.wsgi -b 0.0.0.0:8000 -w 3