FROM alpine:latest AS noop-base

MAINTAINER Travis Wichert <padthaitofuhot@protonmail.com>

RUN apk add --no-cache fortune bash
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh

FROM noop-base AS noop-exited
ENV RUNNING=false
ENV VERBOSE=true

FROM noop-base AS noop-exited-quiet
ENV RUNNING=false
ENV VERBOSE=false

FROM noop-base AS noop-running
ENV RUNNING=true
ENV VERBOSE=true

FROM noop-base AS noop-running-quiet
ENV RUNNING=true
ENV VERBOSE=false
