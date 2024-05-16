FROM alpine:latest
RUN apk add --no-cache fortune bash
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
