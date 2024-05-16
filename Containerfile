FROM alpine:latest as noop-base

MAINTAINER Travis Wichert <padthaitofuhot@protonmail.com>

RUN apk add --no-cache fortune bash
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh

from noop-base as noop-exited
ENV RUNNING=false
ENV VERBOSE=true

from noop-base as noop-exited-quiet
ENV RUNNING=false
ENV VERBOSE=false

from noop-base as noop-running
ENV RUNNING=true
ENV VERBOSE=true

from noop-base as noop-running-quiet
ENV RUNNING=true
ENV VERBOSE=false
