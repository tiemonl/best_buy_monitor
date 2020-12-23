FROM mhart/alpine-node:latest

WORKDIR /app

ENV INTERVAL=10000

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

ENTRYPOINT [ "/bin/sh", "./entrypoint.sh" ]