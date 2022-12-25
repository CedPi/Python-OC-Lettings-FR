FROM python:3.11-bullseye
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8080" ]
# CMD gunicorn oc_lettings_site.wsgi:application --bind 0.0.0.0:8000