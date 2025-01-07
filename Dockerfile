# syntax=docker/dockerfile:1.2
FROM node:23

WORKDIR /usr/src/app

COPY . .

EXPOSE 3001

RUN cd backend/ && npm install

CMD cd backend/ && npm start
