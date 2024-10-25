#!/bin/bash

echo "executing script"
sed -i "s/db_HOST = localhost/db_HOST = db/" .env*
sed -i "s/db_PORT = 5431/db_PORT = 5432/g" .env*
echo "yee! server started"