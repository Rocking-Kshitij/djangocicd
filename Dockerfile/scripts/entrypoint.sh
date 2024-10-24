#!/bin/bash

echo "executing script"
dir
sleep 2
sed -i "s/db_HOST = localhost/db_HOST = db/" .env
sed -i "s/db_PORT = 5431/db_PORT = 5432/g" .env
sleep 10
python ./tooplat/manage.py runserver 0.0.0.0:8001

echo "yee! server started"