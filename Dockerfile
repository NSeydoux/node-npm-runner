FROM node:12.10.0
MAINTAINER Nicolas Seydoux <contact@zwifi.eu>
COPY entrypoint.sh /
COPY build.sh /project/build
ENTRYPOINT ["/entrypoint.sh"]
