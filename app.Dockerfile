FROM ubuntu:20.04

RUN apt-get update && apt-get install -y npm

WORKDIR api/

RUN npm install && npm start

WORKDIR client/

RUN npm install && npm start

EXPOSE 3000
