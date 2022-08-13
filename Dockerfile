FROM ubuntu/latest
RUN apk add --update nodejs npm
COPY . /src
WORKDIR /src
RUN npm install // TODO: modify this
EXPOSE 8080
ENTRYPOINT ["node", "./app.js"]
