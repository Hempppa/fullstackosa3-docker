# syntax=docker/dockerfile:1.2
FROM node:23

WORKDIR /usr/src/app

COPY . .

RUN --mount=type=secret,id=_env temp=$(cat .env)

ENV MONGODB_URI="$temp"

EXPOSE 3001

RUN cd backend/ && npm install

CMD cd backend/ && npm start
