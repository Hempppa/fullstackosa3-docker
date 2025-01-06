# syntax = docker/dockerfile:1.2
FROM node:23-alpine

WORKDIR /usr/src/app

COPY . .

RUN temp=$(--mount=type=secret,id=_env,dst=/etc/secrets/.env cat /etc/secrets/.env)

ENV MONGODB_URI="$temp"

EXPOSE 3001

RUN cd backend/ && npm install

CMD cd backend/ && npm start
