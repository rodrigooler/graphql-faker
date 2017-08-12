FROM node:8.0-alpine

MAINTAINER Rodrigo Oler <roodrigoprogrammer@gmail.com>

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app
RUN npm i

COPY . /app

#cachable
RUN npm run build

CMD ["npm", "start"]
