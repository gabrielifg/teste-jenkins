FROM node:18.16-bullseye

RUN apt update
RUN apt install -y pandoc

RUN npm install -g redoc-cli@0.13.21
RUN npm install -g apib2swagger
RUN node --version
RUN npm --version
RUN redoc-cli --version
RUN pandoc --version
