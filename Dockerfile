FROM node:alpine

COPY package*.json ./

COPY . .
WORKDIR /usr/src/app
RUN npm ci
EXPOSE 8080 
ENTRYPOINT [ "node","server.js" ]