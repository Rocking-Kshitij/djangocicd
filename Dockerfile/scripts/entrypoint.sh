#!/bin/bash

echo "executing script"
dir
sleep 2
sed -i "s/localhost/db/" .env
sed -i "s/5431/5432/g" .env
sleep 10
python ./tooplat/manage.py runserver 0.0.0.0:8001

echo "yee! server started"