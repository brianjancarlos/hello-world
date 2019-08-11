FROM node:alpine
WORKDIR /usr/src/app
COPY . /usr/src
RUN npm ci
EXPOSE 8080 
ENTRYPOINT [ "node","server.js" ]