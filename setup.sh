#!/bin/bash
# Create dummy data and add it to elasticsearch index

## Start elasticsearch

## Activate virtualenv
# virtualenv .env
# source .env/bin/activate

## Install requirements
pip install -r requirements.txt

## Make migrations
python manage.py makemigrations
python manage.py migrate

## Create dummy data
python manage.py dummy-data 10000

## Push data to elasticsearch index
python manage.py push-to-index

## Run server
python manage.py runserver
