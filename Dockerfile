FROM python:3
LABEL authors="webmaster"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
# - sudo docker compose run django_web django-admin startproject app .
# - sudo chown -R $USER:$USER data app manage.py
