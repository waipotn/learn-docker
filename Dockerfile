# The application is to be run using the below command. Specify the below command to be the entrypoint of the application
# FLASK_APP=/opt/app.py flask run --host=0.0.0.0

FROM ubuntu:18.04

RUN apt-get update --fix-missing

RUN apt-get install -y python python-pip

RUN pip install --upgrade pip

RUN pip install flask

COPY /home/dev_user/source-code/app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0