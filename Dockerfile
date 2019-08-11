FROM node:alpine
WORKDIR /usr/src/app
COPY . .
RUN npm ci
EXPOSE 8080 
ENTRYPOINT [ "node","server.js" ]