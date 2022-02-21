FROM python:3.8.11-buster

WORKDIR /app

COPY ./ .


RUN pip install -r /app/requirements.txt

EXPOSE 80

WORKDIR ./puppycompanyblog

CMD [ "python", "createdb.py" ]

CMD [ "python", "app.py" ]
