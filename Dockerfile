FROM python:stretch

WORKDIR /app
COPY . /app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENV JWT_SECRET='myjwtsecret'
ENV LOG_LEVEL='DEBUG'

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]