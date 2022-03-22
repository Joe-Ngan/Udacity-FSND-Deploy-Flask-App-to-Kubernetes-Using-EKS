FROM python:stretch

COPY . /app
WORKDIR /app

RUN python -m pip install -U pip
RUN python -m pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

