FROM node:20-alpine3.17

RUN npm install -g json-server@0.17.4

WORKDIR /server

RUN mkdir config && mkdir data

COPY config/json-server.json config/json-server.json

COPY data/db.json data/db.json
COPY data/routes.json data/routes.json

COPY public public

EXPOSE 80

ENTRYPOINT ["json-server"]

CMD ["-c", "config/json-server.json", "-r", "data/routes.json", "--watch", "data/db.json"]