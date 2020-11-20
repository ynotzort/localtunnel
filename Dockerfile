FROM node:10.1.0-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

WORKDIR /app

COPY . .

RUN cd /app/ && npm install -g

ENTRYPOINT ["lt"]
