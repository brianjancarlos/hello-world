FROM node:alpine
WORKDIR /usr/src/app
ADD . .
RUN npm ci
EXPOSE 8080 
ENTRYPOINT [ "node","server.js" ]