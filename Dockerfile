# syntax = docker/dockerfile:1.2
FROM node:23-alpine

WORKDIR /usr/src/app

COPY . .

RUN --mount=type=secret,id=_env,dst=/etc/secrets/.env cat /etc/secrets/.env | export MONGODB_URI= -

EXPOSE 3001

RUN cd backend/ && npm install

CMD cd backend/ && npm start
