FROM alpine
COPY entrypoint.sh /work/
ENTRYPOINT sh entrypoint.sh
EXPOSE 80
RUN apk add docker certbot
WORKDIR /work
