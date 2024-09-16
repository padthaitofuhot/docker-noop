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

quit() {
    o "Exiting..."
    exit "${RETVAL}"
}

trap_handler() {
  printf '\n'
  o "Signal caught..."
  quit
}

trap trap_handler SIGINT SIGTERM SIGQUIT SIGHUP

o "Your fortune cookie for this run:"
o " "
fortune | o
o " "

if "${RUNNING}"; then
  o "Going to sleep..."
  sleep infinity
fi

quit
