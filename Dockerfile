FROM node:alpine

COPY package*.json ./
WORKDIR /usr/src/app
COPY ./src .
RUN npm ci
EXPOSE 8080 
ENTRYPOINT [ "node","server.js" ]