FROM python:3.7.5-slim-buster
MAINTAINER Malick Gueye <malickhtwt@gmail.com>

ENV INSTALL_PATH /portfolio
RUN mkdir -p $INSTALL_PATH

ENV FLASK_APP="portfolio.app"

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD gunicorn -b 0.0.0.0:8000 --access-logfile - "portfolio.app:create_app()"

