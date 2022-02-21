FROM python:3.8.12-buster

WORKDIR /app

COPY ./puppycompanyblog .
COPY ./app.py .
COPY ./requirements.txt .

RUN pip install -r /app/requirements.txt

EXPOSE 80

WORKDIR ./puppycompanyblog

CMD [ "python", "createdb.py" ]

CMD [ "python", "../app.py" ]
