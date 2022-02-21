FROM python:3.8.12-buster

WORKDIR /app

COPY ./puppycompanyblog/ ./puppycompanyblog/
COPY ./app.py .
COPY ./requirements.txt .
COPY ./createdb.py .

RUN pip install -r /app/requirements.txt

EXPOSE 80

CMD [ "python", "createdb.py" ]

CMD [ "python", "../app.py" ]
