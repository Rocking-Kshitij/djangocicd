#!/bin/bash

echo "executing script"
ls
sleep 2
touch .env
cat <<EOL >.env
SECRET_KEY = django-insecure-_%en8$^p@yuv3@e6b5t_fx-68fk3n1cf7!^a_c#++@kv)l3^97
db_name = finance_db
db_user = django_postgreuser
db_PASSWORD = django_postgre_password
db_HOST = db
db_PORT = 5432
EOL
sleep 10
mv .env* .env

echo "yee! server started"