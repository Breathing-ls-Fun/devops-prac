#!/bin/bash

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python3 -m venv env
fi

echo $PWD
source env/bin/activate


pip3 install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi


if [ -d "static" ] 
then
    echo "Static folder exists" 
else
    python3 manage.py collectstatic
fi


sudo chmod -R 777 logs
echo "envsetup finished"