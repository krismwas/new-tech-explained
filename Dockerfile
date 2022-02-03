FROM python:3.8-alpine
MAINTAINER cashmere ventures

ENV PYTHONUNBUFFERED 1

#install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#set up directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D dockeruser
USER dockeruser