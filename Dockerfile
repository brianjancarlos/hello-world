FROM node:alpine
WORKDIR /usr/src/app
COPY src .
RUN npm ci
EXPOSE 8080 
ENTRYPOINT [ "node","index.js" ]