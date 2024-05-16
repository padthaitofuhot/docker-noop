#!/bin/bash

# Copyright (C) 2024 Travis Wichert <padthaitofuhot@protonmail.com>

o() {
  if [ -z "${*}" ] && "${VERBOSE}"; then
    while read -r line; do
      printf "noop> %s\n" "${line}"
    done
  else
    printf '%s\n' "${*}" | o
  fi
}

trap_handler() {
  o "Signal caught, waking up and exiting..."
  exit 0
}

trap trap_handler SIGINT SIGTERM SIGQUIT SIGHUP

o "Your fortune cookie for this run:"
o " "
fortune | o
o " "

if "${RUNNING}"; then
  o "Going to sleep..."
  sleep infinity
else
  o "Exiting..."
fi

exit 0
