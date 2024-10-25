#!/bin/bash

echo "executing script"
sed -i "s/localhost/db/" .env
sed -i "s/5431/5432/g" .env
echo "yee! server started"