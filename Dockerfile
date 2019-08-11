FROM node:alpine
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm ci
EXPOSE 8080 
ENTRYPOINT [ "node","server.js" ]