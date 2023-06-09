FROM node:14-alpine

ENV MONGO_DB_USERNAME=salma \
    MONGO_DB_PWD=salma123

RUN mkdir -p /home/app

COPY ./app /home/app

CMD ["node", "/home/app/server.js"]
