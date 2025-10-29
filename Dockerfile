FROM alpine:latest

RUN apk update && apk add --no-cache netcat-openbsd

WORKDIR /app 


CMD ["tail", "-f", "/dev/null"]
