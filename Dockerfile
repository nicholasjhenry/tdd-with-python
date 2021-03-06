# pull official base image
FROM python:3.7-alpine

# set work directory
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DEBUG 0

# install psycopg2
RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add postgresql-dev \
    && pip install psycopg2 \
    && apk del build-deps 

# copy project
COPY . /app

# install dependencies
RUN pip install pipenv
RUN pipenv install --deploy --system

# collect static files
RUN python manage.py collectstatic --noinput

# add and run as non-root user
RUN adduser -D appuser
USER appuser

# run gunicorn
CMD gunicorn hello_django.wsgi:application --bind 0.0.0.0:$PORT

