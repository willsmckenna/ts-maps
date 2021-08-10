FROM node:10.13.0-alpine as base

WORKDIR /usr/src/app

EXPOSE 1234

COPY . . 

RUN npm install -g parcel-bundler
RUN npm install

ENTRYPOINT parcel index.html