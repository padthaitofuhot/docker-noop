FROM alpine:latest AS noop-base

MAINTAINER Travis Wichert <padthaitofuhot@protonmail.com>

RUN apk add --no-cache fortune bash
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh

FROM noop-base AS noop-exited
ENV RUNNING=false
ENV VERBOSE=true
ENV RETVAL=0

FROM noop-base AS noop-exited-quiet
ENV RUNNING=false
ENV VERBOSE=false
ENV RETVAL=0

FROM noop-base AS noop-running
ENV RUNNING=true
ENV VERBOSE=true
ENV RETVAL=0

FROM noop-base AS noop-running-quiet
ENV RUNNING=true
ENV VERBOSE=false
ENV RETVAL=0

from noop-base as noop-exited-error
ENV RUNNING=false
ENV VERBOSE=true
ENV RETVAL=1

from noop-base as noop-exited-quiet-error
ENV RUNNING=false
ENV VERBOSE=false
ENV RETVAL=1

from noop-base as noop-running-error
ENV RUNNING=true
ENV VERBOSE=true
ENV RETVAL=1

from noop-base as noop-running-quiet-error
ENV RUNNING=true
ENV VERBOSE=false
ENV RETVAL=1
