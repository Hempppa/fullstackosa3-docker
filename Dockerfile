From node:23-alpine

WORKDIR /usr/src/app

COPY . .

EXPOSE 5000

RUN cd backend/ && npm install

CMD cd backend/ && npm start
