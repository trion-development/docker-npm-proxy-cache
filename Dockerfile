FROM node:alpine

MAINTAINER trion development GmbH "info@trion.de"

WORKDIR /app

VOLUME /cache

# Expose API port
EXPOSE 8080

RUN npm install npm-proxy-cache -g

ENTRYPOINT ["npm-proxy-cache", "--ttl", "86400", "--expired", "--host", "0.0.0.0"]
